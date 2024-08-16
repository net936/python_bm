import { get, post } from '/@/utils/http/axios';

const URL = {
  loginLogList: '/myapp/admin/loginLog/list',
  opLogList: '/myapp/admin/opLog/list',
  errorLogList: '/myapp/admin/errorLog/list',

  clearLoginLogList: '/myapp/admin/loginLog/clear',
  clearOpLogList: '/myapp/admin/opLog/clear',
  clearErrorLogList: '/myapp/admin/errorLog/clear',
};

const listLoginLogApi = async (params) => get({ url: URL.loginLogList, params: params, data: {}, headers: {} });
const listOpLogListApi = async (params) => get({ url: URL.opLogList, params: params, data: {}, headers: {} });
const listErrorLogListApi = async (params) => get({ url: URL.errorLogList, params: params, data: {}, headers: {} });

const clearLoginLogApi = async (params) => post({ url: URL.clearLoginLogList, params: params, data: {}, headers: {} });
const clearOpLogListApi = async (params) => post({ url: URL.clearOpLogList, params: params, data: {}, headers: {} });
const clearErrorLogListApi = async (params) => post({ url: URL.clearErrorLogList, params: params, data: {}, headers: {} });

export { listLoginLogApi, listOpLogListApi, listErrorLogListApi, clearLoginLogApi, clearOpLogListApi, clearErrorLogListApi };
