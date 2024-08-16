import { get, post } from '/@/utils/http/axios';

const URL = {
  list: '/myapp/admin/overview/count',
  sysInfo: '/myapp/admin/overview/sysInfo',
};

const listApi = async (params) => get({ url: URL.list, params: params, data: {}, headers: {} });

const sysInfoApi = async (params) => get({ url: URL.sysInfo, params: params, data: {}, headers: {} });

export { listApi, sysInfoApi };
