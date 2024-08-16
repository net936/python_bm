import { get, post } from '/@/utils/http/axios';
const URL = {
  list: '/myapp/admin/classification/list',
  create: '/myapp/admin/classification/create',
  update: '/myapp/admin/classification/update',
  delete: '/myapp/admin/classification/delete',
};

const listApi = async (params) => get({ url: URL.list, params: params, data: {}, headers: {} });
const createApi = async (data) =>
  post({ url: URL.create, params: {}, data: data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });
const updateApi = async (params, data) =>
  post({ url: URL.update, params: params, data: data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });
const deleteApi = async (params) => post({ url: URL.delete, params: params, headers: {} });

export { listApi, createApi, updateApi, deleteApi };
