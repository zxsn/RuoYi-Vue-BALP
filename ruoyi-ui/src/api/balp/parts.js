import request from '@/utils/request'

// 查询零组件列表
export function listParts(query) {
  return request({
    url: '/balp/parts/list',
    method: 'get',
    params: query
  })
}

// 查询零组件详细
export function getParts(id) {
  return request({
    url: '/balp/parts/' + id,
    method: 'get'
  })
}

// 新增零组件
export function addParts(data) {
  return request({
    url: '/balp/parts',
    method: 'post',
    data: data
  })
}

// 修改零组件
export function updateParts(data) {
  return request({
    url: '/balp/parts',
    method: 'put',
    data: data
  })
}

// 删除零组件
export function delParts(id) {
  return request({
    url: '/balp/parts/' + id,
    method: 'delete'
  })
}
