import { get, post } from '/@/utils/http/axios';

const URL = {
  list: '/myapp/admin/order/list',
  create: '/myapp/admin/order/create',
  update: '/myapp/admin/order/update',
  delete: '/myapp/admin/order/delete',
  cancel: '/myapp/admin/order/cancel_order',
  cancelUserOrder: '/api/order/cancelUserOrder',
  userOrderList: '/api/order/userOrderList',
};

const listApi = async (params) => get({ url: URL.list, params: params, data: {}, headers: {} });
const userOrderListApi = async (params) => get({ url: URL.userOrderList, params: params, data: {}, headers: {} });

const createApi = async (data) =>
  post({
    url: URL.create,
    params: {},
    data: data,
    headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' },
  });
const updateApi = async (params, data) =>
  post({
    url: URL.update,
    params: params,
    data: data,
    headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' },
  });
const deleteApi = async (params) => post({ url: URL.delete, params: params, headers: {} });

const cancelApi = async (params) => post({ url: URL.cancel, params: params, headers: {} });

const cancelUserOrderApi = async (params) => post({ url: URL.cancelUserOrder, params: params, headers: {} });

export { listApi, userOrderListApi, createApi, updateApi, deleteApi, cancelApi, cancelUserOrderApi };
