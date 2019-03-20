/**
 * Created by arts-mgcx on 2016/10/19.
 */

(function (doc, win) {
    var docEl = doc.documentElement,
        resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
        recalc = function () {
            var clientWidth = docEl.clientWidth;
            if (clientWidth > 568) {
                clientWidth = 568;
            } else if (clientWidth < 320) {
                clientWidth = 320;
            } else {
                clientWidth = clientWidth;
            }
            docEl.style.fontSize = 20 * (clientWidth / 375) + 'px';
        };
    if (!doc.addEventListener) return;
    recalc();
    win.addEventListener(resizeEvt, recalc, false);
    doc.addEventListener('DOMContentLoaded', recalc, false);
})(document, window);

$(function () {
    $.ajaxSetup({
        headers: {'X-CSRF-Token': $('meta[name=csrf-token]').attr('content')}
    });
    //返回
    $('#app').on('click', '.event-back', function () {
        history.back();
    });
    //点击跳转事件
    $('#app').on('click', '.event-jump', function () {
        var url = $(this).data('url');
        if(!url){
            console.log('url is empty!');
            return;
        }
        var target = $(this).data('target');
        if(target=='_blank'){
            window.open(url);
        }else{
            location.href = url;
        }
    });
})


//提示
function tip(msg) {
    swal({
        title: msg,
        text: "",
        type: "error",
        showCancelButton: false,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "确定",
        closeOnConfirm: true,
        closeOnCancel: true
    });
}
function showMessage(msg, type, callback) {
    if (type == 'error') {
        swal({
            title: msg,
            text: "",
            type: "error",
            showCancelButton: false,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "确定",
            closeOnConfirm: true,
            closeOnCancel: true
        });
    } else if (type == 'success') {
        swal({
            title: msg,
            text: "",
            type: "success",
            showCancelButton: false,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "确定",
            closeOnConfirm: true,
            closeOnCancel: true
        }, function () {
            if (typeof callback == 'function') {
                callback();
            }
        });
    } else if (type == 'warn') {
        swal({
            title: msg,
            text: "",
            type: "warning",
            showCancelButton: false,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "确定",
            closeOnConfirm: true,
            closeOnCancel: true
        });
    }
}
function showConfirm(title, text, type, succ) {
    swal({
        title: title,
        text: text,
        type: type,//"warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        closeOnConfirm: false,
        closeOnCancel: true
    }, function () {
        succ();
    });
}


//ajax
function ajaxProcess(data, callback) {//console.log(data);
    if (data.errCode == 1) {
        showMessage(data.errMsg, 'error');
    } else if (data.errCode == 0) {
        showMessage(data.errMsg, 'success', function () {

            if (typeof callback == 'function') {
                callback(data);
            }
        });
    } else if (data.errCode == 2) {
        for (i in data.data.error) {
            tip(data.data.error[i]);
            return false;
        }
    }

}
function ajax(url, data, type, succ) {
    if (typeof type != 'undefined') {
        data._method = type;
    }
    $.ajax({
        url: url,
        data: data,
        dataType: 'json',
        type: 'POST',
        success: function (data, status, xhr) {
            ajaxProcess(data, succ)
        },
        error: function (xhr, status, error) {
            //ajaxProcess(xhr.status,xhr.responseText);
            console.log('ajax error:' + xhr.status);
        }
    });
}
function ajaxConfirm(url, data, type, succ, title, text) {
    showConfirm(title, text, 'warning', function () {
        ajax(url, data, type, succ);
    });
}


;(function (undefined) {
    "use strict"
    var _global;
    var _Tools = {
        getJson: function (url, params, callback) {
            $.ajax({
                url: url,
                data: params,
                dataType: 'json',
                type: 'GET',
                success: function (data, status, xhr) {
                    callback(data)
                },
                error: function (xhr, status, error) {
                    //sole.log('ajax error:' + xhr.status);
                    callback({
                        errCode: xhr.status,
                        errMsg: xhr.responseText,
                        status: xhr.status,
                    })
                }
            });
        },
        postData: function (url, params, callback) {
            $.ajax({
                url: url,
                data: params,
                dataType: 'json',
                type: 'POST',
                success: function (data, status, xhr) {
                    callback(data)
                },
                error: function (xhr, status, error) {
                    //ajaxProcess(xhr.status,xhr.responseText);
                    callback({
                        errMsg: xhr.responseText,
                        status: xhr.status,
                    })
                }
            });
        },
        submitForm: function (form) {

        },
        _dropListRender: function (miniRefresh, container, dataListDom, result, reflush, renderFunction) {
            if (result.errCode != 0) {
                reflush ? miniRefresh.endDownLoading(true) : miniRefresh.endUpLoading(true);
            } else {
                container.data('next_url', result.data.list.next_page_url)
                container.data('prev_url', result.data.list.prev_page_url)
                try {
                    var html = renderFunction(result.data)
                    if (reflush) {
                        dataListDom.html(html);
                    } else {
                        dataListDom.append(html);
                    }
                } catch (e) {
                    console.log(e)
                }
                reflush ? miniRefresh.endDownLoading(result.data.list.next_page_url ? false : true) : miniRefresh.endUpLoading(true);
            }
        },
        dropListInit: function (containerSelector, url, renderFunction, Up, Down) {
            var _this = this;
            Up = typeof Up == 'undefined' ? true : Up;
            Down = typeof Down == 'undefined' ? true : Down;

            var container = $(containerSelector);
            container.html('<div class="minirefresh-scroll"><ul class="data-list"></ul></div>')
            container.addClass('minirefresh-wrap')
            var dataListDom = container.find('.data-list')
            container.data('url', url)
            container.data('next_url', url)
            container.data('prev_url', '')

            var miniRefresh = null;
            var config = {
                container: containerSelector,
                up: {
                    isLock: !Up,
                    isAuto: true,
                    callback: function () {
                        var next_url = container.data('next_url');
                        if (!next_url) {
                            miniRefresh.endUpLoading(true);
                            return;
                        }
                        _this.getJson(next_url, '', function (result) {
                            _this._dropListRender(miniRefresh, container, dataListDom, result, false, renderFunction)
                        })
                    }
                },
                down: {
                    isLock: !Down,
                    callback: function () {
                        var url = container.data('url');
                        _this.getJson(url, '', function (result) {
                            _this._dropListRender(miniRefresh, container, dataListDom, result, true, renderFunction)
                        })
                    }
                }
            };
            var miniRefresh = new MiniRefresh(config);
            return miniRefresh;
        },
        fullScreen: function () {
            var element = document.documentElement, method = "RequestFullScreen";
            var prefixMethod;
            ["webkit", "moz", "ms", "o", ""].forEach(function (prefix) {
                    if (prefixMethod)
                        return;
                    if (prefix === "") {
                        // 无前缀，方法首字母小写
                        method = method.slice(0, 1).toLowerCase() + method.slice(1);
                    }
                    var fsMethod = typeof element[prefix + method];
                    if (fsMethod + "" !== "undefined") {
                        // 如果是函数,则执行该函数
                        if (fsMethod === "function") {
                            prefixMethod = element[prefix + method]();
                        } else {
                            prefixMethod = element[prefix + method];
                        }
                    }
                }
            );
        },
    }
    // 最后将插件对象暴露给全局对象
    _global = (function () {
        return this || (0, eval)('this');
    }());
    if (typeof module !== "undefined" && module.exports) {
        module.exports = _Tools;
    } else if (typeof define === "function" && define.amd) {
        define(function () {
            return _Tools;
        });
    } else {
        !('_Tools' in _global) && (_global._Tools = _Tools);
    }
}());
