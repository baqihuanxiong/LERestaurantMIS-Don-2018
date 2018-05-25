from channels.generic.websocket import WebsocketConsumer
import json
from datetime import datetime as dt
from foreground.models import Detail


class DistributeConsumer(WebsocketConsumer):
    def connect(self):
        self.accept()

    def disconnect(self, close_code):
        pass

    def receive(self, text_data):
        text_data_json = json.loads(text_data)
        command = text_data_json['command']
        if command == 'get':
            t_start = dt.fromtimestamp(int(text_data_json['t_start']))
            t_end = dt.fromtimestamp(int(text_data_json['t_end']))
            state_filter = text_data_json['state_filter']
            details_qs = Detail.objects.filter(state__in=state_filter, order__date__range=[t_start, t_end])
            message = [{'order_id': detail.order_id, 'time': detail.order.date.timestamp(),
                        'food_name': detail.food.name, 'food_mark': detail.mark, 'state': detail.state,
                        'station': detail.station_id, 'detail_id': detail.id} for detail in details_qs]
            self.send(text_data=json.dumps({
                'message': message
            }, ensure_ascii=False))
        elif command == 'delete':
            for key, val in text_data_json['content'].items():
                if val:
                    Detail.objects.get(id=key).delete()

        elif command == 'update':
            for key, val in text_data_json['content'].items():
                detail_obj = Detail.objects.get(id=key)
                detail_obj.station_id = int(val)
                detail_obj.save()
