import request from '@/utils/request'

// 查询外购件列表
export function listExternal(query) {
  return request({
    url: '/balp/external/list',
    method: 'get',
    params: query
  })
}

// 查询外购件详细
export function getExternal(seqno) {
  return request({
    url: '/balp/external/' + seqno,
    method: 'get'
  })
}

// 新增外购件
export function addExternal(data) {
  return request({
    url: '/balp/external',
    method: 'post',
    data: data
  })
}

// 修改外购件
export function updateExternal(data) {
  return request({
    url: '/balp/external',
    method: 'put',
    data: data
  })
}

// 删除外购件
export function delExternal(seqno) {
  return request({
    url: '/balp/external/' + seqno,
    method: 'delete'
  })
}
