# Create your views here.
import datetime

from rest_framework.decorators import api_view, throttle_classes, authentication_classes

from myapp.auth.MyRateThrottle import MyRateThrottle
from myapp.auth.authentication import AdminTokenAuthtication
from myapp.handler import APIResponse
from myapp.models import Feedback
from myapp.permission.permission import isDemoAdminUser
from myapp.serializers import FeedbackSerializer


@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        feedbacks = Feedback.objects.all().order_by('-create_time')
        serializer = FeedbackSerializer(feedbacks, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)


@api_view(['POST'])
@authentication_classes([AdminTokenAuthtication])
def delete(request):
    if isDemoAdminUser(request):
        return APIResponse(code=1, msg='演示帐号无法操作')

    try:
        ids = request.GET.get('ids')
        ids_arr = ids.split(',')
        Feedback.objects.filter(id__in=ids_arr).delete()
    except Feedback.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    return APIResponse(code=0, msg='删除成功')
