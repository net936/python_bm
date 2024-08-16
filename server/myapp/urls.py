from django.urls import path

from myapp import views

app_name = 'myapp'
urlpatterns = [


    # 前台管理api
    path('index/classification/list', views.index.classification.list_api),
    path('index/user/login', views.index.user.login),
    path('index/user/register', views.index.user.register),
    path('index/user/info', views.index.user.info),
    path('index/user/update', views.index.user.update),
    path('index/user/updatePwd', views.index.user.updatePwd),
    path('index/notice/list_api', views.index.notice.list_api),
    path('index/thing/list', views.index.thing.list_api),
    path('index/thing/detail', views.index.thing.detail),
    path('index/thing/getRecommend', views.index.thing.get_recommend),
    path('index/thing/increaseWishCount', views.index.thing.increaseWishCount),
    path('index/thing/addWishUser', views.index.thing.addWishUser),
    path('index/thing/removeWishUser', views.index.thing.removeWishUser),
    path('index/thing/getWishThingList', views.index.thing.getWishThingList),
    path('index/thing/addCollectUser', views.index.thing.addCollectUser),
    path('index/thing/removeCollectUser', views.index.thing.removeCollectUser),
    path('index/thing/getCollectThingList', views.index.thing.getCollectThingList),
    path('index/thing/increaseRecommendCount', views.index.thing.increaseRecommendCount),
    path('index/thing/listUserThing', views.index.thing.list_user_thing_api),
    path('index/thing/create', views.index.thing.create),
    path('index/thing/update', views.index.thing.update),
    path('index/thing/rate', views.index.thing.rate),
    path('index/comment/list', views.index.comment.list_api),
    path('index/comment/listMyComments', views.index.comment.list_my_comment),
    path('index/comment/create', views.index.comment.create),
    path('index/comment/delete', views.index.comment.delete),
    path('index/comment/like', views.index.comment.like),
    path('index/order/list', views.index.order.list_api),
    path('index/order/create', views.index.order.create),
    path('index/order/cancel_order', views.index.order.cancel_order),
    path('index/feedback/create', views.index.feedback.create),


]
