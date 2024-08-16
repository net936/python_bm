// 权限问题后期增加
import { get, post } from '/@/utils/http/axios';
// import axios from 'axios';
const URL = {
  list: '/myapp/admin/thing/list',
  create: '/myapp/admin/thing/create',
  update: '/myapp/admin/thing/update',
  delete: '/myapp/admin/thing/delete',
  detail: '/api/thing/detail',
};

const listApi = async (params) => get({ url: URL.list, params: params, data: {}, headers: {} });
const createApi = async (data) =>
  post({ url: URL.create, params: {}, data: data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });
const updateApi = async (params, data) =>
  post({ url: URL.update, params: params, data: data, headers: { 'Content-Type': 'multipart/form-data;charset=utf-8' } });
const deleteApi = async (params) => post({ url: URL.delete, params: params, headers: {} });
const detailApi = async (params) => get({ url: URL.detail, params: params, headers: {} });

export { listApi, createApi, updateApi, deleteApi, detailApi };
