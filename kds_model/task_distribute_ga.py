import random
from deap import base
from deap import creator
from deap import tools


def evaluateInd(individual):
    return sum(individual),


def initCustom(container, aeq):
    return container(aeq[i][random.randint(0, len(aeq[i])-1)] for i in range(len(aeq)))


def cxCustom(ind1, ind2):
    size = min(len(ind1), len(ind2))
    cxpoint1 = random.randint(1, size)
    cxpoint2 = random.randint(1, size - 1)
    if cxpoint2 >= cxpoint1:
        cxpoint2 += 1
    else:
        cxpoint1, cxpoint2 = cxpoint2, cxpoint1
    ind1[cxpoint1:cxpoint2], ind2[cxpoint1:cxpoint2] = ind2[cxpoint1:cxpoint2], ind1[cxpoint1:cxpoint2]
    return ind1, ind2


def mutCustom(individual, aeq, indpb):
    for i in range(len(aeq)):
        if random.random() < indpb:
            individual[i] = aeq[i][random.randint(0, len(aeq[i])-1)]
    return individual,


AEQ = [(2, 3, 5, 6, 9), (1, 2, 3, 4), (1, 4, 5), (6, 7, 9), (1, 5, 6, 7, 9)]

creator.create("FitnessMin", base.Fitness, weights=(-1.0,))
creator.create("Individual", list, fitness=creator.FitnessMin)

toolbox = base.Toolbox()
toolbox.register("individual", initCustom, creator.Individual, AEQ)
toolbox.register("population", tools.initRepeat, list, toolbox.individual)
toolbox.register("mate", cxCustom)
toolbox.register("mutate", mutCustom, aeq=AEQ, indpb=0.2)
toolbox.register("select", tools.selTournament, tournsize=3)
toolbox.register("evaluate", evaluateInd)

NGEN = 200
CXPB = 0.3
MUTPB = 0.2
random.seed(64)
pop = toolbox.population(n=100)
fitness = list(map(toolbox.evaluate, pop))
for ind, fit in zip(pop, fitness):
    ind.fitness.values = fit
fits = [ind.fitness.values[0] for ind in pop]

g = 0
while g < 100:
    g += 1
    offspring = toolbox.select(pop, len(pop))
    offspring = list(map(toolbox.clone, offspring))

    for child1, child2 in zip(offspring[::2], offspring[1:2]):
        if random.random() < CXPB:
            toolbox.mate(child1, child2)
            del child1.fitness.values
            del child2.fitness.values

    for mutant in offspring:
        if random.random() < MUTPB:
            toolbox.mutate(mutant)
            del mutant.fitness.values

    invalid_ind = [ind for ind in offspring if not ind.fitness.valid]
    fitness = map(toolbox.evaluate, invalid_ind)
    for ind, fit in zip(invalid_ind, fitness):
        ind.fitness.values = fit

    pop[:] = offspring
    fits = [ind.fitness.values[0] for ind in pop]
    print("%s: %s" % (g, min(fits)))

best_ind = tools.selBest(pop, k=1)[0]
print("Best individual is %s, %s" % (best_ind, best_ind.fitness.values))

