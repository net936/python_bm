import { get, post } from '/@/utils/http/axios';

const URL = {
  list: '/myapp/admin/notice/list',
  create: '/myapp/admin/notice/create',
  update: '/myapp/admin/notice/update',
  delete: '/myapp/admin/notice/delete',
};

const listApi = async (params) => get({ url: URL.list, params: params, data: {}, headers: {} });
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

export { listApi, createApi, updateApi, deleteApi };
