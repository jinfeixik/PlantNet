(function(a,b){function cy(a){return f.isWindow(a)?a:a.nodeType===9?a.defaultView||a.parentWindow:!1}function cv(a){if(!ck[a]){var b=c.body,d=f("<"+a+">").appendTo(b),e=d.css("display");d.remove();if(e==="none"||e===""){cl||(cl=c.createElement("iframe"),cl.frameBorder=cl.width=cl.height=0),b.appendChild(cl);if(!cm||!cl.createElement)cm=(cl.contentWindow||cl.contentDocument).document,cm.write((c.compatMode==="CSS1Compat"?"<!doctype html>":"")+"<html><body>"),cm.close();d=cm.createElement(a),cm.body.appendChild(d),e=f.css(d,"display"),b.removeChild(cl)}ck[a]=e}return ck[a]}function cu(a,b){var c={};f.each(cq.concat.apply([],cq.slice(0,b)),function(){c[this]=a});return c}function ct(){cr=b}function cs(){setTimeout(ct,0);return cr=f.now()}function cj(){try{return new a.ActiveXObject("Microsoft.XMLHTTP")}catch(b){}}function ci(){try{return new a.XMLHttpRequest}catch(b){}}function cc(a,c){a.dataFilter&&(c=a.dataFilter(c,a.dataType));var d=a.dataTypes,e={},g,h,i=d.length,j,k=d[0],l,m,n,o,p;for(g=1;g<i;g++){if(g===1)for(h in a.converters)typeof h=="string"&&(e[h.toLowerCase()]=a.converters[h]);l=k,k=d[g];if(k==="*")k=l;else if(l!=="*"&&l!==k){m=l+" "+k,n=e[m]||e["* "+k];if(!n){p=b;for(o in e){j=o.split(" ");if(j[0]===l||j[0]==="*"){p=e[j[1]+" "+k];if(p){o=e[o],o===!0?n=p:p===!0&&(n=o);break}}}}!n&&!p&&f.error("No conversion from "+m.replace(" "," to ")),n!==!0&&(c=n?n(c):p(o(c)))}}return c}function cb(a,c,d){var e=a.contents,f=a.dataTypes,g=a.responseFields,h,i,j,k;for(i in g)i in d&&(c[g[i]]=d[i]);while(f[0]==="*")f.shift(),h===b&&(h=a.mimeType||c.getResponseHeader("content-type"));if(h)for(i in e)if(e[i]&&e[i].test(h)){f.unshift(i);break}if(f[0]in d)j=f[0];else{for(i in d){if(!f[0]||a.converters[i+" "+f[0]]){j=i;break}k||(k=i)}j=j||k}if(j){j!==f[0]&&f.unshift(j);return d[j]}}function ca(a,b,c,d){if(f.isArray(b))f.each(b,function(b,e){c||bE.test(a)?d(a,e):ca(a+"["+(typeof e=="object"||f.isArray(e)?b:"")+"]",e,c,d)});else if(!c&&b!=null&&typeof b=="object")for(var e in b)ca(a+"["+e+"]",b[e],c,d);else d(a,b)}function b_(a,c){var d,e,g=f.ajaxSettings.flatOptions||{};for(d in c)c[d]!==b&&((g[d]?a:e||(e={}))[d]=c[d]);e&&f.extend(!0,a,e)}function b$(a,c,d,e,f,g){f=f||c.dataTypes[0],g=g||{},g[f]=!0;var h=a[f],i=0,j=h?h.length:0,k=a===bT,l;for(;i<j&&(k||!l);i++)l=h[i](c,d,e),typeof l=="string"&&(!k||g[l]?l=b:(c.dataTypes.unshift(l),l=b$(a,c,d,e,l,g)));(k||!l)&&!g["*"]&&(l=b$(a,c,d,e,"*",g));return l}function bZ(a){return function(b,c){typeof b!="string"&&(c=b,b="*");if(f.isFunction(c)){var d=b.toLowerCase().split(bP),e=0,g=d.length,h,i,j;for(;e<g;e++)h=d[e],j=/^\+/.test(h),j&&(h=h.substr(1)||"*"),i=a[h]=a[h]||[],i[j?"unshift":"push"](c)}}}function bC(a,b,c){var d=b==="width"?a.offsetWidth:a.offsetHeight,e=b==="width"?bx:by,g=0,h=e.length;if(d>0){if(c!=="border")for(;g<h;g++)c||(d-=parseFloat(f.css(a,"padding"+e[g]))||0),c==="margin"?d+=parseFloat(f.css(a,c+e[g]))||0:d-=parseFloat(f.css(a,"border"+e[g]+"Width"))||0;return d+"px"}d=bz(a,b,b);if(d<0||d==null)d=a.style[b]||0;d=parseFloat(d)||0;if(c)for(;g<h;g++)d+=parseFloat(f.css(a,"padding"+e[g]))||0,c!=="padding"&&(d+=parseFloat(f.css(a,"border"+e[g]+"Width"))||0),c==="margin"&&(d+=parseFloat(f.css(a,c+e[g]))||0);return d+"px"}function bp(a,b){b.src?f.ajax({url:b.src,async:!1,dataType:"script"}):f.globalEval((b.text||b.textContent||b.innerHTML||"").replace(bf,"")),b.parentNode&&b.parentNode.removeChild(b)}function bo(a){var b=c.createElement("div");bh.appendChild(b),b.innerHTML=a.outerHTML;return b.firstChild}function bn(a){var b=(a.nodeName||"").toLowerCase();b==="input"?bm(a):b!=="script"&&typeof a.getElementsByTagName!="undefined"&&f.grep(a.getElementsByTagName("input"),bm)}function bm(a){if(a.type==="checkbox"||a.type==="radio")a.defaultChecked=a.checked}function bl(a){return typeof a.getElementsByTagName!="undefined"?a.getElementsByTagName("*"):typeof a.querySelectorAll!="undefined"?a.querySelectorAll("*"):[]}function bk(a,b){var c;if(b.nodeType===1){b.clearAttributes&&b.clearAttributes(),b.mergeAttributes&&b.mergeAttributes(a),c=b.nodeName.toLowerCase();if(c==="object")b.outerHTML=a.outerHTML;else if(c!=="input"||a.type!=="checkbox"&&a.type!=="radio"){if(c==="option")b.selected=a.defaultSelected;else if(c==="input"||c==="textarea")b.defaultValue=a.defaultValue}else a.checked&&(b.defaultChecked=b.checked=a.checked),b.value!==a.value&&(b.value=a.value);b.removeAttribute(f.expando)}}function bj(a,b){if(b.nodeType===1&&!!f.hasData(a)){var c,d,e,g=f._data(a),h=f._data(b,g),i=g.events;if(i){delete h.handle,h.events={};for(c in i)for(d=0,e=i[c].length;d<e;d++)f.event.add(b,c+(i[c][d].namespace?".":"")+i[c][d].namespace,i[c][d],i[c][d].data)}h.data&&(h.data=f.extend({},h.data))}}function bi(a,b){return f.nodeName(a,"table")?a.getElementsByTagName("tbody")[0]||a.appendChild(a.ownerDocument.createElement("tbody")):a}function U(a){var b=V.split("|"),c=a.createDocumentFragment();if(c.createElement)while(b.length)c.createElement(b.pop());return c}function T(a,b,c){b=b||0;if(f.isFunction(b))return f.grep(a,function(a,d){var e=!!b.call(a,d,a);return e===c});if(b.nodeType)return f.grep(a,function(a,d){return a===b===c});if(typeof b=="string"){var d=f.grep(a,function(a){return a.nodeType===1});if(O.test(b))return f.filter(b,d,!c);b=f.filter(b,d)}return f.grep(a,function(a,d){return f.inArray(a,b)>=0===c})}function S(a){return!a||!a.parentNode||a.parentNode.nodeType===11}function K(){return!0}function J(){return!1}function n(a,b,c){var d=b+"defer",e=b+"queue",g=b+"mark",h=f._data(a,d);h&&(c==="queue"||!f._data(a,e))&&(c==="mark"||!f._data(a,g))&&setTimeout(function(){!f._data(a,e)&&!f._data(a,g)&&(f.removeData(a,d,!0),h.fire())},0)}function m(a){for(var b in a){if(b==="data"&&f.isEmptyObject(a[b]))continue;if(b!=="toJSON")return!1}return!0}function l(a,c,d){if(d===b&&a.nodeType===1){var e="data-"+c.replace(k,"-$1").toLowerCase();d=a.getAttribute(e);if(typeof d=="string"){try{d=d==="true"?!0:d==="false"?!1:d==="null"?null:f.isNumeric(d)?parseFloat(d):j.test(d)?f.parseJSON(d):d}catch(g){}f.data(a,c,d)}else d=b}return d}function h(a){var b=g[a]={},c,d;a=a.split(/\s+/);for(c=0,d=a.length;c<d;c++)b[a[c]]=!0;return b}var c=a.document,d=a.navigator,e=a.location,f=function(){function J(){if(!e.isReady){try{c.documentElement.doScroll("left")}catch(a){setTimeout(J,1);return}e.ready()}}var e=function(a,b){return new e.fn.init(a,b,h)},f=a.jQuery,g=a.$,h,i=/^(?:[^#<]*(<[\w\W]+>)[^>]*$|#([\w\-]*)$)/,j=/\S/,k=/^\s+/,l=/\s+$/,m=/^<(\w+)\s*\/?>(?:<\/\1>)?$/,n=/^[\],:{}\s]*$/,o=/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,p=/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,q=/(?:^|:|,)(?:\s*\[)+/g,r=/(webkit)[ \/]([\w.]+)/,s=/(opera)(?:.*version)?[ \/]([\w.]+)/,t=/(msie) ([\w.]+)/,u=/(mozilla)(?:.*? rv:([\w.]+))?/,v=/-([a-z]|[0-9])/ig,w=/^-ms-/,x=function(a,b){return(b+"").toUpperCase()},y=d.userAgent,z,A,B,C=Object.prototype.toString,D=Object.prototype.hasOwnProperty,E=Array.prototype.push,F=Array.prototype.slice,G=String.prototype.trim,H=Array.prototype.indexOf,I={};e.fn=e.prototype={constructor:e,init:function(a,d,f){var g,h,j,k;if(!a)return this;if(a.nodeType){this.context=this[0]=a,this.length=1;return this}if(a==="body"&&!d&&c.body){this.context=c,this[0]=c.body,this.selector=a,this.length=1;return this}if(typeof a=="string"){a.charAt(0)!=="<"||a.charAt(a.length-1)!==">"||a.length<3?g=i.exec(a):g=[null,a,null];if(g&&(g[1]||!d)){if(g[1]){d=d instanceof e?d[0]:d,k=d?d.ownerDocument||d:c,j=m.exec(a),j?e.isPlainObject(d)?(a=[c.createElement(j[1])],e.fn.attr.call(a,d,!0)):a=[k.createElement(j[1])]:(j=e.buildFragment([g[1]],[k]),a=(j.cacheable?e.clone(j.fragment):j.fragment).childNodes);return e.merge(this,a)}h=c.getElementById(g[2]);if(h&&h.parentNode){if(h.id!==g[2])return f.find(a);this.length=1,this[0]=h}this.context=c,this.selector=a;return this}return!d||d.jquery?(d||f).find(a):this.constructor(d).find(a)}if(e.isFunction(a))return f.ready(a);a.selector!==b&&(this.selector=a.selector,this.context=a.context);return e.makeArray(a,this)},selector:"",jquery:"1.7.1",length:0,size:function(){return this.length},toArray:function(){return F.call(this,0)},get:function(a){return a==null?this.toArray():a<0?this[this.length+a]:this[a]},pushStack:function(a,b,c){var d=this.constructor();e.isArray(a)?E.apply(d,a):e.merge(d,a),d.prevObject=this,d.context=this.context,b==="find"?d.selector=this.selector+(this.selector?" ":"")+c:b&&(d.selector=this.selector+"."+b+"("+c+")");return d},each:function(a,b){return e.each(this,a,b)},ready:function(a){e.bindReady(),A.add(a);return this},eq:function(a){a=+a;return a===-1?this.slice(a):this.slice(a,a+1)},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},slice:function(){return this.pushStack(F.apply(this,arguments),"slice",F.call(arguments).join(","))},map:function(a){return this.pushStack(e.map(this,function(b,c){return a.call(b,c,b)}))},end:function(){return this.prevObject||this.constructor(null)},push:E,sort:[].sort,splice:[].splice},e.fn.init.prototype=e.fn,e.extend=e.fn.extend=function(){var a,c,d,f,g,h,i=arguments[0]||{},j=1,k=arguments.length,l=!1;typeof i=="boolean"&&(l=i,i=arguments[1]||{},j=2),typeof i!="object"&&!e.isFunction(i)&&(i={}),k===j&&(i=this,--j);for(;j<k;j++)if((a=arguments[j])!=null)for(c in a){d=i[c],f=a[c];if(i===f)continue;l&&f&&(e.isPlainObject(f)||(g=e.isArray(f)))?(g?(g=!1,h=d&&e.isArray(d)?d:[]):h=d&&e.isPlainObject(d)?d:{},i[c]=e.extend(l,h,f)):f!==b&&(i[c]=f)}return i},e.extend({noConflict:function(b){a.$===e&&(a.$=g),b&&a.jQuery===e&&(a.jQuery=f);return e},isReady:!1,readyWait:1,holdReady:function(a){a?e.readyWait++:e.ready(!0)},ready:function(a){if(a===!0&&!--e.readyWait||a!==!0&&!e.isReady){if(!c.body)return setTimeout(e.ready,1);e.isReady=!0;if(a!==!0&&--e.readyWait>0)return;A.fireWith(c,[e]),e.fn.trigger&&e(c).trigger("ready").off("ready")}},bindReady:function(){if(!A){A=e.Callbacks("once memory");if(c.readyState==="complete")return setTimeout(e.ready,1);if(c.addEventListener)c.addEventListener("DOMContentLoaded",B,!1),a.addEventListener("load",e.ready,!1);else if(c.attachEvent){c.attachEvent("onreadystatechange",B),a.attachEvent("onload",e.ready);var b=!1;try{b=a.frameElement==null}catch(d){}c.documentElement.doScroll&&b&&J()}}},isFunction:function(a){return e.type(a)==="function"},isArray:Array.isArray||function(a){return e.type(a)==="array"},isWindow:function(a){return a&&typeof a=="object"&&"setInterval"in a},isNumeric:function(a){return!isNaN(parseFloat(a))&&isFinite(a)},type:function(a){return a==null?String(a):I[C.call(a)]||"object"},isPlainObject:function(a){if(!a||e.type(a)!=="object"||a.nodeType||e.isWindow(a))return!1;try{if(a.constructor&&!D.call(a,"constructor")&&!D.call(a.constructor.prototype,"isPrototypeOf"))return!1}catch(c){return!1}var d;for(d in a);return d===b||D.call(a,d)},isEmptyObject:function(a){for(var b in a)return!1;return!0},error:function(a){throw new Error(a)},parseJSON:function(b){if(typeof b!="string"||!b)return null;b=e.trim(b);if(a.JSON&&a.JSON.parse)return a.JSON.parse(b);if(n.test(b.replace(o,"@").replace(p,"]").replace(q,"")))return(new Function("return "+b))();e.error("Invalid JSON: "+b)},parseXML:function(c){var d,f;try{a.DOMParser?(f=new DOMParser,d=f.parseFromString(c,"text/xml")):(d=new ActiveXObject("Microsoft.XMLDOM"),d.async="false",d.loadXML(c))}catch(g){d=b}(!d||!d.documentElement||d.getElementsByTagName("parsererror").length)&&e.error("Invalid XML: "+c);return d},noop:function(){},globalEval:function(b){b&&j.test(b)&&(a.execScript||function(b){a.eval.call(a,b)})(b)},camelCase:function(a){return a.replace(w,"ms-").replace(v,x)},nodeName:function(a,b){return a.nodeName&&a.nodeName.toUpperCase()===b.toUpperCase()},each:function(a,c,d){var f,g=0,h=a.length,i=h===b||e.isFunction(a);if(d){if(i){for(f in a)if(c.apply(a[f],d)===!1)break}else for(;g<h;)if(c.apply(a[g++],d)===!1)break}else if(i){for(f in a)if(c.call(a[f],f,a[f])===!1)break}else for(;g<h;)if(c.call(a[g],g,a[g++])===!1)break;return a},trim:G?function(a){return a==null?"":G.call(a)}:function(a){return a==null?"":(a+"").replace(k,"").replace(l,"")},makeArray:function(a,b){var c=b||[];if(a!=null){var d=e.type(a);a.length==null||d==="string"||d==="function"||d==="regexp"||e.isWindow(a)?E.call(c,a):e.merge(c,a)}return c},inArray:function(a,b,c){var d;if(b){if(H)return H.call(b,a,c);d=b.length,c=c?c<0?Math.max(0,d+c):c:0;for(;c<d;c++)if(c in b&&b[c]===a)return c}return-1},merge:function(a,c){var d=a.length,e=0;if(typeof c.length=="number")for(var f=c.length;e<f;e++)a[d++]=c[e];else while(c[e]!==b)a[d++]=c[e++];a.length=d;return a},grep:function(a,b,c){var d=[],e;c=!!c;for(var f=0,g=a.length;f<g;f++)e=!!b(a[f],f),c!==e&&d.push(a[f]);return d},map:function(a,c,d){var f,g,h=[],i=0,j=a.length,k=a instanceof e||j!==b&&typeof j=="number"&&(j>0&&a[0]&&a[j-1]||j===0||e.isArray(a));if(k)for(;i<j;i++)f=c(a[i],i,d),f!=null&&(h[h.length]=f);else for(g in a)f=c(a[g],g,d),f!=null&&(h[h.length]=f);return h.concat.apply([],h)},guid:1,proxy:function(a,c){if(typeof c=="string"){var d=a[c];c=a,a=d}if(!e.isFunction(a))return b;var f=F.call(arguments,2),g=function(){return a.apply(c,f.concat(F.call(arguments)))};g.guid=a.guid=a.guid||g.guid||e.guid++;return g},access:function(a,c,d,f,g,h){var i=a.length;if(typeof c=="object"){for(var j in c)e.access(a,j,c[j],f,g,d);return a}if(d!==b){f=!h&&f&&e.isFunction(d);for(var k=0;k<i;k++)g(a[k],c,f?d.call(a[k],k,g(a[k],c)):d,h);return a}return i?g(a[0],c):b},now:function(){return(new Date).getTime()},uaMatch:function(a){a=a.toLowerCase();var b=r.exec(a)||s.exec(a)||t.exec(a)||a.indexOf("compatible")<0&&u.exec(a)||[];return{browser:b[1]||"",version:b[2]||"0"}},sub:function(){function a(b,c){return new a.fn.init(b,c)}e.extend(!0,a,this),a.superclass=this,a.fn=a.prototype=this(),a.fn.constructor=a,a.sub=this.sub,a.fn.init=function(d,f){f&&f instanceof e&&!(f instanceof a)&&(f=a(f));return e.fn.init.call(this,d,f,b)},a.fn.init.prototype=a.fn;var b=a(c);return a},browser:{}}),e.each("Boolean Number String Function Array Date RegExp Object".split(" "),function(a,b){I["[object "+b+"]"]=b.toLowerCase()}),z=e.uaMatch(y),z.browser&&(e.browser[z.browser]=!0,e.browser.version=z.version),e.browser.webkit&&(e.browser.safari=!0),j.test(" ")&&(k=/^[\s\xA0]+/,l=/[\s\xA0]+$/),h=e(c),c.addEventListener?B=function(){c.removeEventListener("DOMContentLoaded",B,!1),e.ready()}:c.attachEvent&&(B=function(){c.readyState==="complete"&&(c.detachEvent("onreadystatechange",B),e.ready())});return e}(),g={};f.Callbacks=function(a){a=a?g[a]||h(a):{};var c=[],d=[],e,i,j,k,l,m=function(b){var d,e,g,h,i;for(d=0,e=b.length;d<e;d++)g=b[d],h=f.type(g),h==="array"?m(g):h==="function"&&(!a.unique||!o.has(g))&&c.push(g)},n=function(b,f){f=f||[],e=!a.memory||[b,f],i=!0,l=j||0,j=0,k=c.length;for(;c&&l<k;l++)if(c[l].apply(b,f)===!1&&a.stopOnFalse){e=!0;break}i=!1,c&&(a.once?e===!0?o.disable():c=[]:d&&d.length&&(e=d.shift(),o.fireWith(e[0],e[1])))},o={add:function(){if(c){var a=c.length;m(arguments),i?k=c.length:e&&e!==!0&&(j=a,n(e[0],e[1]))}return this},remove:function(){if(c){var b=arguments,d=0,e=b.length;for(;d<e;d++)for(var f=0;f<c.length;f++)if(b[d]===c[f]){i&&f<=k&&(k--,f<=l&&l--),c.splice(f--,1);if(a.unique)break}}return this},has:function(a){if(c){var b=0,d=c.length;for(;b<d;b++)if(a===c[b])return!0}return!1},empty:function(){c=[];return this},disable:function(){c=d=e=b;return this},disabled:function(){return!c},lock:function(){d=b,(!e||e===!0)&&o.disable();return this},locked:function(){return!d},fireWith:function(b,c){d&&(i?a.once||d.push([b,c]):(!a.once||!e)&&n(b,c));return this},fire:function(){o.fireWith(this,arguments);return this},fired:function(){return!!e}};return o};var i=[].slice;f.extend({Deferred:function(a){var b=f.Callbacks("once memory"),c=f.Callbacks("once memory"),d=f.Callbacks("memory"),e="pending",g={resolve:b,reject:c,notify:d},h={done:b.add,fail:c.add,progress:d.add,state:function(){return e},isResolved:b.fired,isRejected:c.fired,then:function(a,b,c){i.done(a).fail(b).progress(c);return this},always:function(){i.done.apply(i,arguments).fail.apply(i,arguments);return this},pipe:function(a,b,c){return f.Deferred(function(d){f.each({done:[a,"resolve"],fail:[b,"reject"],progress:[c,"notify"]},function(a,b){var c=b[0],e=b[1],g;f.isFunction(c)?i[a](function(){g=c.apply(this,arguments),g&&f.isFunction(g.promise)?g.promise().then(d.resolve,d.reject,d.notify):d[e+"With"](this===i?d:this,[g])}):i[a](d[e])})}).promise()},promise:function(a){if(a==null)a=h;else for(var b in h)a[b]=h[b];return a}},i=h.promise({}),j;for(j in g)i[j]=g[j].fire,i[j+"With"]=g[j].fireWith;i.done(function(){e="resolved"},c.disable,d.lock).fail(function(){e="rejected"},b.disable,d.lock),a&&a.call(i,i);return i},when:function(a){function m(a){return function(b){e[a]=arguments.length>1?i.call(arguments,0):b,j.notifyWith(k,e)}}function l(a){return function(c){b[a]=arguments.length>1?i.call(arguments,0):c,--g||j.resolveWith(j,b)}}var b=i.call(arguments,0),c=0,d=b.length,e=Array(d),g=d,h=d,j=d<=1&&a&&f.isFunction(a.promise)?a:f.Deferred(),k=j.promise();if(d>1){for(;c<d;c++)b[c]&&b[c].promise&&f.isFunction(b[c].promise)?b[c].promise().then(l(c),j.reject,m(c)):--g;g||j.resolveWith(j,b)}else j!==a&&j.resolveWith(j,d?[a]:[]);return k}}),f.support=function(){var b,d,e,g,h,i,j,k,l,m,n,o,p,q=c.createElement("div"),r=c.documentElement;q.setAttribute("className","t"),q.innerHTML="   <link/><table></table><a href='/a' style='top:1px;float:left;opacity:.55;'>a</a><input type='checkbox'/>",d=q.getElementsByTagName("*"),e=q.getElementsByTagName("a")[0];if(!d||!d.length||!e)return{};g=c.createElement("select"),h=g.appendChild(c.createElement("option")),i=q.getElementsByTagName("input")[0],b={leadingWhitespace:q.firstChild.nodeType===3,tbody:!q.getElementsByTagName("tbody").length,htmlSerialize:!!q.getElementsByTagName("link").length,style:/top/.test(e.getAttribute("style")),hrefNormalized:e.getAttribute("href")==="/a",opacity:/^0.55/.test(e.style.opacity),cssFloat:!!e.style.cssFloat,checkOn:i.value==="on",optSelected:h.selected,getSetAttribute:q.className!=="t",enctype:!!c.createElement("form").enctype,html5Clone:c.createElement("nav").cloneNode(!0).outerHTML!=="<:nav></:nav>",submitBubbles:!0,changeBubbles:!0,focusinBubbles:!1,deleteExpando:!0,noCloneEvent:!0,inlineBlockNeedsLayout:!1,shrinkWrapBlocks:!1,reliableMarginRight:!0},i.checked=!0,b.noCloneChecked=i.cloneNode(!0).checked,g.disabled=!0,b.optDisabled=!h.disabled;try{delete q.test}catch(s){b.deleteExpando=!1}!q.addEventListener&&q.attachEvent&&q.fireEvent&&(q.attachEvent("onclick",function(){b.noCloneEvent=!1}),q.cloneNode(!0).fireEvent("onclick")),i=c.createElement("input"),i.value="t",i.setAttribute("type","radio"),b.radioValue=i.value==="t",i.setAttribute("checked","checked"),q.appendChild(i),k=c.createDocumentFragment(),k.appendChild(q.lastChild),b.checkClone=k.cloneNode(!0).cloneNode(!0).lastChild.checked,b.appendChecked=i.checked,k.removeChild(i),k.appendChild(q),q.innerHTML="",a.getComputedStyle&&(j=c.createElement("div"),j.style.width="0",j.style.marginRight="0",q.style.width="2px",q.appendChild(j),b.reliableMarginRight=(parseInt((a.getComputedStyle(j,null)||{marginRight:0}).marginRight,10)||0)===0);if(q.attachEvent)for(o in{submit:1,change:1,focusin:1})n="on"+o,p=n in q,p||(q.setAttribute(n,"return;"),p=typeof q[n]=="function"),b[o+"Bubbles"]=p;k.removeChild(q),k=g=h=j=q=i=null,f(function(){var a,d,e,g,h,i,j,k,m,n,o,r=c.getElementsByTagName("body")[0];!r||(j=1,k="position:absolute;top:0;left:0;width:1px;height:1px;margin:0;",m="visibility:hidden;border:0;",n="style='"+k+"border:5px solid #000;padding:0;'",o="<div "+n+"><div></div></div>"+"<table "+n+" cellpadding='0' cellspacing='0'>"+"<tr><td></td></tr></table>",a=c.createElement("div"),a.style.cssText=m+"width:0;height:0;position:static;top:0;margin-top:"+j+"px",r.insertBefore(a,r.firstChild),q=c.createElement("div"),a.appendChild(q),q.innerHTML="<table><tr><td style='padding:0;border:0;display:none'></td><td>t</td></tr></table>",l=q.getElementsByTagName("td"),p=l[0].offsetHeight===0,l[0].style.display="",l[1].style.display="none",b.reliableHiddenOffsets=p&&l[0].offsetHeight===0,q.innerHTML="",q.style.width=q.style.paddingLeft="1px",f.boxModel=b.boxModel=q.offsetWidth===2,typeof q.style.zoom!="undefined"&&(q.style.display="inline",q.style.zoom=1,b.inlineBlockNeedsLayout=q.offsetWidth===2,q.style.display="",q.innerHTML="<div style='width:4px;'></div>",b.shrinkWrapBlocks=q.offsetWidth!==2),q.style.cssText=k+m,q.innerHTML=o,d=q.firstChild,e=d.firstChild,h=d.nextSibling.firstChild.firstChild,i={doesNotAddBorder:e.offsetTop!==5,doesAddBorderForTableAndCells:h.offsetTop===5},e.style.position="fixed",e.style.top="20px",i.fixedPosition=e.offsetTop===20||e.offsetTop===15,e.style.position=e.style.top="",d.style.overflow="hidden",d.style.position="relative",i.subtractsBorderForOverflowNotVisible=e.offsetTop===-5,i.doesNotIncludeMarginInBodyOffset=r.offsetTop!==j,r.removeChild(a),q=a=null,f.extend(b,i))});return b}();var j=/^(?:\{.*\}|\[.*\])$/,k=/([A-Z])/g;f.extend({cache:{},uuid:0,expando:"jQuery"+(f.fn.jquery+Math.random()).replace(/\D/g,""),noData:{embed:!0,object:"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000",applet:!0},hasData:function(a){a=a.nodeType?f.cache[a[f.expando]]:a[f.expando];return!!a&&!m(a)},data:function(a,c,d,e){if(!!f.acceptData(a)){var g,h,i,j=f.expando,k=typeof c=="string",l=a.nodeType,m=l?f.cache:a,n=l?a[j]:a[j]&&j,o=c==="events";if((!n||!m[n]||!o&&!e&&!m[n].data)&&k&&d===b)return;n||(l?a[j]=n=++f.uuid:n=j),m[n]||(m[n]={},l||(m[n].toJSON=f.noop));if(typeof c=="object"||typeof c=="function")e?m[n]=f.extend(m[n],c):m[n].data=f.extend(m[n].data,c);g=h=m[n],e||(h.data||(h.data={}),h=h.data),d!==b&&(h[f.camelCase(c)]=d);if(o&&!h[c])return g.events;k?(i=h[c],i==null&&(i=h[f.camelCase(c)])):i=h;return i}},removeData:function(a,b,c){if(!!f.acceptData(a)){var d,e,g,h=f.expando,i=a.nodeType,j=i?f.cache:a,k=i?a[h]:h;if(!j[k])return;if(b){d=c?j[k]:j[k].data;if(d){f.isArray(b)||(b in d?b=[b]:(b=f.camelCase(b),b in d?b=[b]:b=b.split(" ")));for(e=0,g=b.length;e<g;e++)delete d[b[e]];if(!(c?m:f.isEmptyObject)(d))return}}if(!c){delete j[k].data;if(!m(j[k]))return}f.support.deleteExpando||!j.setInterval?delete j[k]:j[k]=null,i&&(f.support.deleteExpando?delete a[h]:a.removeAttribute?a.removeAttribute(h):a[h]=null)}},_data:function(a,b,c){return f.data(a,b,c,!0)},acceptData:function(a){if(a.nodeName){var b=f.noData[a.nodeName.toLowerCase()];if(b)return b!==!0&&a.getAttribute("classid")===b}return!0}}),f.fn.extend({data:function(a,c){var d,e,g,h=null;if(typeof a=="undefined"){if(this.length){h=f.data(this[0]);if(this[0].nodeType===1&&!f._data(this[0],"parsedAttrs")){e=this[0].attributes;for(var i=0,j=e.length;i<j;i++)g=e[i].name,g.indexOf("data-")===0&&(g=f.camelCase(g.substring(5)),l(this[0],g,h[g]));f._data(this[0],"parsedAttrs",!0)}}return h}if(typeof a=="object")return this.each(function(){f.data(this,a)});d=a.split("."),d[1]=d[1]?"."+d[1]:"";if(c===b){h=this.triggerHandler("getData"+d[1]+"!",[d[0]]),h===b&&this.length&&(h=f.data(this[0],a),h=l(this[0],a,h));return h===b&&d[1]?this.data(d[0]):h}return this.each(function(){var b=f(this),e=[d[0],c];b.triggerHandler("setData"+d[1]+"!",e),f.data(this,a,c),b.triggerHandler("changeData"+d[1]+"!",e)})},removeData:function(a){return this.each(function(){f.removeData(this,a)})}}),f.extend({_mark:function(a,b){a&&(b=(b||"fx")+"mark",f._data(a,b,(f._data(a,b)||0)+1))},_unmark:function(a,b,c){a!==!0&&(c=b,b=a,a=!1);if(b){c=c||"fx";var d=c+"mark",e=a?0:(f._data(b,d)||1)-1;e?f._data(b,d,e):(f.removeData(b,d,!0),n(b,c,"mark"))}},queue:function(a,b,c){var d;if(a){b=(b||"fx")+"queue",d=f._data(a,b),c&&(!d||f.isArray(c)?d=f._data(a,b,f.makeArray(c)):d.push(c));return d||[]}},dequeue:function(a,b){b=b||"fx";var c=f.queue(a,b),d=c.shift(),e={};d==="inprogress"&&(d=c.shift()),d&&(b==="fx"&&c.unshift("inprogress"),f._data(a,b+".run",e),d.call(a,function(){f.dequeue(a,b)},e)),c.length||(f.removeData(a,b+"queue "+b+".run",!0),n(a,b,"queue"))}}),f.fn.extend({queue:function(a,c){typeof a!="string"&&(c=a,a="fx");if(c===b)return f.queue(this[0],a);return this.each(function(){var b=f.queue(this,a,c);a==="fx"&&b[0]!=="inprogress"&&f.dequeue(this,a)})},dequeue:function(a){return this.each(function(){f.dequeue(this,a)})},delay:function(a,b){a=f.fx?f.fx.speeds[a]||a:a,b=b||"fx";return this.queue(b,function(b,c){var d=setTimeout(b,a);c.stop=function(){clearTimeout(d)}})},clearQueue:function(a){return this.queue(a||"fx",[])},promise:function(a,c){function m(){--h||d.resolveWith(e,[e])}typeof a!="string"&&(c=a,a=b),a=a||"fx";var d=f.Deferred(),e=this,g=e.length,h=1,i=a+"defer",j=a+"queue",k=a+"mark",l;while(g--)if(l=f.data(e[g],i,b,!0)||(f.data(e[g],j,b,!0)||f.data(e[g],k,b,!0))&&f.data(e[g],i,f.Callbacks("once memory"),!0))h++,l.add(m);m();return d.promise()}});var o=/[\n\t\r]/g,p=/\s+/,q=/\r/g,r=/^(?:button|input)$/i,s=/^(?:button|input|object|select|textarea)$/i,t=/^a(?:rea)?$/i,u=/^(?:autofocus|autoplay|async|checked|controls|defer|disabled|hidden|loop|multiple|open|readonly|required|scoped|selected)$/i,v=f.support.getSetAttribute,w,x,y;f.fn.extend({attr:function(a,b){return f.access(this,a,b,!0,f.attr)},removeAttr:function(a){return this.each(function(){f.removeAttr(this,a)})},prop:function(a,b){return f.access(this,a,b,!0,f.prop)},removeProp:function(a){a=f.propFix[a]||a;return this.each(function(){try{this[a]=b,delete this[a]}catch(c){}})},addClass:function(a){var b,c,d,e,g,h,i;if(f.isFunction(a))return this.each(function(b){f(this).addClass(a.call(this,b,this.className))});if(a&&typeof a=="string"){b=a.split(p);for(c=0,d=this.length;c<d;c++){e=this[c];if(e.nodeType===1)if(!e.className&&b.length===1)e.className=a;else{g=" "+e.className+" ";for(h=0,i=b.length;h<i;h++)~g.indexOf(" "+b[h]+" ")||(g+=b[h]+" ");e.className=f.trim(g)}}}return this},removeClass:function(a){var c,d,e,g,h,i,j;if(f.isFunction(a))return this.each(function(b){f(this).removeClass(a.call(this,b,this.className))});if(a&&typeof a=="string"||a===b){c=(a||"").split(p);for(d=0,e=this.length;d<e;d++){g=this[d];if(g.nodeType===1&&g.className)if(a){h=(" "+g.className+" ").replace(o," ");for(i=0,j=c.length;i<j;i++)h=h.replace(" "+c[i]+" "," ");g.className=f.trim(h)}else g.className=""}}return this},toggleClass:function(a,b){var c=typeof a,d=typeof b=="boolean";if(f.isFunction(a))return this.each(function(c){f(this).toggleClass(a.call(this,c,this.className,b),b)});return this.each(function(){if(c==="string"){var e,g=0,h=f(this),i=b,j=a.split(p);while(e=j[g++])i=d?i:!h.hasClass(e),h[i?"addClass":"removeClass"](e)}else if(c==="undefined"||c==="boolean")this.className&&f._data(this,"__className__",this.className),this.className=this.className||a===!1?"":f._data(this,"__className__")||""})},hasClass:function(a){var b=" "+a+" ",c=0,d=this.length;for(;c<d;c++)if(this[c].nodeType===1&&(" "+this[c].className+" ").replace(o," ").indexOf(b)>-1)return!0;return!1},val:function(a){var c,d,e,g=this[0];{if(!!arguments.length){e=f.isFunction(a);return this.each(function(d){var g=f(this),h;if(this.nodeType===1){e?h=a.call(this,d,g.val()):h=a,h==null?h="":typeof h=="number"?h+="":f.isArray(h)&&(h=f.map(h,function(a){return a==null?"":a+""})),c=f.valHooks[this.nodeName.toLowerCase()]||f.valHooks[this.type];if(!c||!("set"in c)||c.set(this,h,"value")===b)this.value=h}})}if(g){c=f.valHooks[g.nodeName.toLowerCase()]||f.valHooks[g.type];if(c&&"get"in c&&(d=c.get(g,"value"))!==b)return d;d=g.value;return typeof d=="string"?d.replace(q,""):d==null?"":d}}}}),f.extend({valHooks:{option:{get:function(a){var b=a.attributes.value;return!b||b.specified?a.value:a.text}},select:{get:function(a){var b,c,d,e,g=a.selectedIndex,h=[],i=a.options,j=a.type==="select-one";if(g<0)return null;c=j?g:0,d=j?g+1:i.length;for(;c<d;c++){e=i[c];if(e.selected&&(f.support.optDisabled?!e.disabled:e.getAttribute("disabled")===null)&&(!e.parentNode.disabled||!f.nodeName(e.parentNode,"optgroup"))){b=f(e).val();if(j)return b;h.push(b)}}if(j&&!h.length&&i.length)return f(i[g]).val();return h},set:function(a,b){var c=f.makeArray(b);f(a).find("option").each(function(){this.selected=f.inArray(f(this).val(),c)>=0}),c.length||(a.selectedIndex=-1);return c}}},attrFn:{val:!0,css:!0,html:!0,text:!0,data:!0,width:!0,height:!0,offset:!0},attr:function(a,c,d,e){var g,h,i,j=a.nodeType;if(!!a&&j!==3&&j!==8&&j!==2){if(e&&c in f.attrFn)return f(a)[c](d);if(typeof a.getAttribute=="undefined")return f.prop(a,c,d);i=j!==1||!f.isXMLDoc(a),i&&(c=c.toLowerCase(),h=f.attrHooks[c]||(u.test(c)?x:w));if(d!==b){if(d===null){f.removeAttr(a,c);return}if(h&&"set"in h&&i&&(g=h.set(a,d,c))!==b)return g;a.setAttribute(c,""+d);return d}if(h&&"get"in h&&i&&(g=h.get(a,c))!==null)return g;g=a.getAttribute(c);return g===null?b:g}},removeAttr:function(a,b){var c,d,e,g,h=0;if(b&&a.nodeType===1){d=b.toLowerCase().split(p),g=d.length;for(;h<g;h++)e=d[h],e&&(c=f.propFix[e]||e,f.attr(a,e,""),a.removeAttribute(v?e:c),u.test(e)&&c in a&&(a[c]=!1))}},attrHooks:{type:{set:function(a,b){if(r.test(a.nodeName)&&a.parentNode)f.error("type property can't be changed");else if(!f.support.radioValue&&b==="radio"&&f.nodeName(a,"input")){var c=a.value;a.setAttribute("type",b),c&&(a.value=c);return b}}},value:{get:function(a,b){if(w&&f.nodeName(a,"button"))return w.get(a,b);return b in a?a.value:null},set:function(a,b,c){if(w&&f.nodeName(a,"button"))return w.set(a,b,c);a.value=b}}},propFix:{tabindex:"tabIndex",readonly:"readOnly","for":"htmlFor","class":"className",maxlength:"maxLength",cellspacing:"cellSpacing",cellpadding:"cellPadding",rowspan:"rowSpan",colspan:"colSpan",usemap:"useMap",frameborder:"frameBorder",contenteditable:"contentEditable"},prop:function(a,c,d){var e,g,h,i=a.nodeType;if(!!a&&i!==3&&i!==8&&i!==2){h=i!==1||!f.isXMLDoc(a),h&&(c=f.propFix[c]||c,g=f.propHooks[c]);return d!==b?g&&"set"in g&&(e=g.set(a,d,c))!==b?e:a[c]=d:g&&"get"in g&&(e=g.get(a,c))!==null?e:a[c]}},propHooks:{tabIndex:{get:function(a){var c=a.getAttributeNode("tabindex");return c&&c.specified?parseInt(c.value,10):s.test(a.nodeName)||t.test(a.nodeName)&&a.href?0:b}}}}),f.attrHooks.tabindex=f.propHooks.tabIndex,x={get:function(a,c){var d,e=f.prop(a,c);return e===!0||typeof e!="boolean"&&(d=a.getAttributeNode(c))&&d.nodeValue!==!1?c.toLowerCase():b},set:function(a,b,c){var d;b===!1?f.removeAttr(a,c):(d=f.propFix[c]||c,d in a&&(a[d]=!0),a.setAttribute(c,c.toLowerCase()));return c}},v||(y={name:!0,id:!0},w=f.valHooks.button={get:function(a,c){var d;d=a.getAttributeNode(c);return d&&(y[c]?d.nodeValue!=="":d.specified)?d.nodeValue:b},set:function(a,b,d){var e=a.getAttributeNode(d);e||(e=c.createAttribute(d),a.setAttributeNode(e));return e.nodeValue=b+""}},f.attrHooks.tabindex.set=w.set,f.each(["width","height"],function(a,b){f.attrHooks[b]=f.extend(f.attrHooks[b],{set:function(a,c){if(c===""){a.setAttribute(b,"auto");return c}}})}),f.attrHooks.contenteditable={get:w.get,set:function(a,b,c){b===""&&(b="false"),w.set(a,b,c)}}),f.support.hrefNormalized||f.each(["href","src","width","height"],function(a,c){f.attrHooks[c]=f.extend(f.attrHooks[c],{get:function(a){var d=a.getAttribute(c,2);return d===null?b:d}})}),f.support.style||(f.attrHooks.style={get:function(a){return a.style.cssText.toLowerCase()||b},set:function(a,b){return a.style.cssText=""+b}}),f.support.optSelected||(f.propHooks.selected=f.extend(f.propHooks.selected,{get:function(a){var b=a.parentNode;b&&(b.selectedIndex,b.parentNode&&b.parentNode.selectedIndex);return null}})),f.support.enctype||(f.propFix.enctype="encoding"),f.support.checkOn||f.each(["radio","checkbox"],function(){f.valHooks[this]={get:function(a){return a.getAttribute("value")===null?"on":a.value}}}),f.each(["radio","checkbox"],function(){f.valHooks[this]=f.extend(f.valHooks[this],{set:function(a,b){if(f.isArray(b))return a.checked=f.inArray(f(a).val(),b)>=0}})});var z=/^(?:textarea|input|select)$/i,A=/^([^\.]*)?(?:\.(.+))?$/,B=/\bhover(\.\S+)?\b/,C=/^key/,D=/^(?:mouse|contextmenu)|click/,E=/^(?:focusinfocus|focusoutblur)$/,F=/^(\w*)(?:#([\w\-]+))?(?:\.([\w\-]+))?$/,G=function(a){var b=F.exec(a);b&&(b[1]=(b[1]||"").toLowerCase(),b[3]=b[3]&&new RegExp("(?:^|\\s)"+b[3]+"(?:\\s|$)"));return b},H=function(a,b){var c=a.attributes||{};return(!b[1]||a.nodeName.toLowerCase()===b[1])&&(!b[2]||(c.id||{}).value===b[2])&&(!b[3]||b[3].test((c["class"]||{}).value))},I=function(a){return f.event.special.hover?a:a.replace(B,"mouseenter$1 mouseleave$1")};
f.event={add:function(a,c,d,e,g){var h,i,j,k,l,m,n,o,p,q,r,s;if(!(a.nodeType===3||a.nodeType===8||!c||!d||!(h=f._data(a)))){d.handler&&(p=d,d=p.handler),d.guid||(d.guid=f.guid++),j=h.events,j||(h.events=j={}),i=h.handle,i||(h.handle=i=function(a){return typeof f!="undefined"&&(!a||f.event.triggered!==a.type)?f.event.dispatch.apply(i.elem,arguments):b},i.elem=a),c=f.trim(I(c)).split(" ");for(k=0;k<c.length;k++){l=A.exec(c[k])||[],m=l[1],n=(l[2]||"").split(".").sort(),s=f.event.special[m]||{},m=(g?s.delegateType:s.bindType)||m,s=f.event.special[m]||{},o=f.extend({type:m,origType:l[1],data:e,handler:d,guid:d.guid,selector:g,quick:G(g),namespace:n.join(".")},p),r=j[m];if(!r){r=j[m]=[],r.delegateCount=0;if(!s.setup||s.setup.call(a,e,n,i)===!1)a.addEventListener?a.addEventListener(m,i,!1):a.attachEvent&&a.attachEvent("on"+m,i)}s.add&&(s.add.call(a,o),o.handler.guid||(o.handler.guid=d.guid)),g?r.splice(r.delegateCount++,0,o):r.push(o),f.event.global[m]=!0}a=null}},global:{},remove:function(a,b,c,d,e){var g=f.hasData(a)&&f._data(a),h,i,j,k,l,m,n,o,p,q,r,s;if(!!g&&!!(o=g.events)){b=f.trim(I(b||"")).split(" ");for(h=0;h<b.length;h++){i=A.exec(b[h])||[],j=k=i[1],l=i[2];if(!j){for(j in o)f.event.remove(a,j+b[h],c,d,!0);continue}p=f.event.special[j]||{},j=(d?p.delegateType:p.bindType)||j,r=o[j]||[],m=r.length,l=l?new RegExp("(^|\\.)"+l.split(".").sort().join("\\.(?:.*\\.)?")+"(\\.|$)"):null;for(n=0;n<r.length;n++)s=r[n],(e||k===s.origType)&&(!c||c.guid===s.guid)&&(!l||l.test(s.namespace))&&(!d||d===s.selector||d==="**"&&s.selector)&&(r.splice(n--,1),s.selector&&r.delegateCount--,p.remove&&p.remove.call(a,s));r.length===0&&m!==r.length&&((!p.teardown||p.teardown.call(a,l)===!1)&&f.removeEvent(a,j,g.handle),delete o[j])}f.isEmptyObject(o)&&(q=g.handle,q&&(q.elem=null),f.removeData(a,["events","handle"],!0))}},customEvent:{getData:!0,setData:!0,changeData:!0},trigger:function(c,d,e,g){if(!e||e.nodeType!==3&&e.nodeType!==8){var h=c.type||c,i=[],j,k,l,m,n,o,p,q,r,s;if(E.test(h+f.event.triggered))return;h.indexOf("!")>=0&&(h=h.slice(0,-1),k=!0),h.indexOf(".")>=0&&(i=h.split("."),h=i.shift(),i.sort());if((!e||f.event.customEvent[h])&&!f.event.global[h])return;c=typeof c=="object"?c[f.expando]?c:new f.Event(h,c):new f.Event(h),c.type=h,c.isTrigger=!0,c.exclusive=k,c.namespace=i.join("."),c.namespace_re=c.namespace?new RegExp("(^|\\.)"+i.join("\\.(?:.*\\.)?")+"(\\.|$)"):null,o=h.indexOf(":")<0?"on"+h:"";if(!e){j=f.cache;for(l in j)j[l].events&&j[l].events[h]&&f.event.trigger(c,d,j[l].handle.elem,!0);return}c.result=b,c.target||(c.target=e),d=d!=null?f.makeArray(d):[],d.unshift(c),p=f.event.special[h]||{};if(p.trigger&&p.trigger.apply(e,d)===!1)return;r=[[e,p.bindType||h]];if(!g&&!p.noBubble&&!f.isWindow(e)){s=p.delegateType||h,m=E.test(s+h)?e:e.parentNode,n=null;for(;m;m=m.parentNode)r.push([m,s]),n=m;n&&n===e.ownerDocument&&r.push([n.defaultView||n.parentWindow||a,s])}for(l=0;l<r.length&&!c.isPropagationStopped();l++)m=r[l][0],c.type=r[l][1],q=(f._data(m,"events")||{})[c.type]&&f._data(m,"handle"),q&&q.apply(m,d),q=o&&m[o],q&&f.acceptData(m)&&q.apply(m,d)===!1&&c.preventDefault();c.type=h,!g&&!c.isDefaultPrevented()&&(!p._default||p._default.apply(e.ownerDocument,d)===!1)&&(h!=="click"||!f.nodeName(e,"a"))&&f.acceptData(e)&&o&&e[h]&&(h!=="focus"&&h!=="blur"||c.target.offsetWidth!==0)&&!f.isWindow(e)&&(n=e[o],n&&(e[o]=null),f.event.triggered=h,e[h](),f.event.triggered=b,n&&(e[o]=n));return c.result}},dispatch:function(c){c=f.event.fix(c||a.event);var d=(f._data(this,"events")||{})[c.type]||[],e=d.delegateCount,g=[].slice.call(arguments,0),h=!c.exclusive&&!c.namespace,i=[],j,k,l,m,n,o,p,q,r,s,t;g[0]=c,c.delegateTarget=this;if(e&&!c.target.disabled&&(!c.button||c.type!=="click")){m=f(this),m.context=this.ownerDocument||this;for(l=c.target;l!=this;l=l.parentNode||this){o={},q=[],m[0]=l;for(j=0;j<e;j++)r=d[j],s=r.selector,o[s]===b&&(o[s]=r.quick?H(l,r.quick):m.is(s)),o[s]&&q.push(r);q.length&&i.push({elem:l,matches:q})}}d.length>e&&i.push({elem:this,matches:d.slice(e)});for(j=0;j<i.length&&!c.isPropagationStopped();j++){p=i[j],c.currentTarget=p.elem;for(k=0;k<p.matches.length&&!c.isImmediatePropagationStopped();k++){r=p.matches[k];if(h||!c.namespace&&!r.namespace||c.namespace_re&&c.namespace_re.test(r.namespace))c.data=r.data,c.handleObj=r,n=((f.event.special[r.origType]||{}).handle||r.handler).apply(p.elem,g),n!==b&&(c.result=n,n===!1&&(c.preventDefault(),c.stopPropagation()))}}return c.result},props:"attrChange attrName relatedNode srcElement altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),fixHooks:{},keyHooks:{props:"char charCode key keyCode".split(" "),filter:function(a,b){a.which==null&&(a.which=b.charCode!=null?b.charCode:b.keyCode);return a}},mouseHooks:{props:"button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(" "),filter:function(a,d){var e,f,g,h=d.button,i=d.fromElement;a.pageX==null&&d.clientX!=null&&(e=a.target.ownerDocument||c,f=e.documentElement,g=e.body,a.pageX=d.clientX+(f&&f.scrollLeft||g&&g.scrollLeft||0)-(f&&f.clientLeft||g&&g.clientLeft||0),a.pageY=d.clientY+(f&&f.scrollTop||g&&g.scrollTop||0)-(f&&f.clientTop||g&&g.clientTop||0)),!a.relatedTarget&&i&&(a.relatedTarget=i===a.target?d.toElement:i),!a.which&&h!==b&&(a.which=h&1?1:h&2?3:h&4?2:0);return a}},fix:function(a){if(a[f.expando])return a;var d,e,g=a,h=f.event.fixHooks[a.type]||{},i=h.props?this.props.concat(h.props):this.props;a=f.Event(g);for(d=i.length;d;)e=i[--d],a[e]=g[e];a.target||(a.target=g.srcElement||c),a.target.nodeType===3&&(a.target=a.target.parentNode),a.metaKey===b&&(a.metaKey=a.ctrlKey);return h.filter?h.filter(a,g):a},special:{ready:{setup:f.bindReady},load:{noBubble:!0},focus:{delegateType:"focusin"},blur:{delegateType:"focusout"},beforeunload:{setup:function(a,b,c){f.isWindow(this)&&(this.onbeforeunload=c)},teardown:function(a,b){this.onbeforeunload===b&&(this.onbeforeunload=null)}}},simulate:function(a,b,c,d){var e=f.extend(new f.Event,c,{type:a,isSimulated:!0,originalEvent:{}});d?f.event.trigger(e,null,b):f.event.dispatch.call(b,e),e.isDefaultPrevented()&&c.preventDefault()}},f.event.handle=f.event.dispatch,f.removeEvent=c.removeEventListener?function(a,b,c){a.removeEventListener&&a.removeEventListener(b,c,!1)}:function(a,b,c){a.detachEvent&&a.detachEvent("on"+b,c)},f.Event=function(a,b){if(!(this instanceof f.Event))return new f.Event(a,b);a&&a.type?(this.originalEvent=a,this.type=a.type,this.isDefaultPrevented=a.defaultPrevented||a.returnValue===!1||a.getPreventDefault&&a.getPreventDefault()?K:J):this.type=a,b&&f.extend(this,b),this.timeStamp=a&&a.timeStamp||f.now(),this[f.expando]=!0},f.Event.prototype={preventDefault:function(){this.isDefaultPrevented=K;var a=this.originalEvent;!a||(a.preventDefault?a.preventDefault():a.returnValue=!1)},stopPropagation:function(){this.isPropagationStopped=K;var a=this.originalEvent;!a||(a.stopPropagation&&a.stopPropagation(),a.cancelBubble=!0)},stopImmediatePropagation:function(){this.isImmediatePropagationStopped=K,this.stopPropagation()},isDefaultPrevented:J,isPropagationStopped:J,isImmediatePropagationStopped:J},f.each({mouseenter:"mouseover",mouseleave:"mouseout"},function(a,b){f.event.special[a]={delegateType:b,bindType:b,handle:function(a){var c=this,d=a.relatedTarget,e=a.handleObj,g=e.selector,h;if(!d||d!==c&&!f.contains(c,d))a.type=e.origType,h=e.handler.apply(this,arguments),a.type=b;return h}}}),f.support.submitBubbles||(f.event.special.submit={setup:function(){if(f.nodeName(this,"form"))return!1;f.event.add(this,"click._submit keypress._submit",function(a){var c=a.target,d=f.nodeName(c,"input")||f.nodeName(c,"button")?c.form:b;d&&!d._submit_attached&&(f.event.add(d,"submit._submit",function(a){this.parentNode&&!a.isTrigger&&f.event.simulate("submit",this.parentNode,a,!0)}),d._submit_attached=!0)})},teardown:function(){if(f.nodeName(this,"form"))return!1;f.event.remove(this,"._submit")}}),f.support.changeBubbles||(f.event.special.change={setup:function(){if(z.test(this.nodeName)){if(this.type==="checkbox"||this.type==="radio")f.event.add(this,"propertychange._change",function(a){a.originalEvent.propertyName==="checked"&&(this._just_changed=!0)}),f.event.add(this,"click._change",function(a){this._just_changed&&!a.isTrigger&&(this._just_changed=!1,f.event.simulate("change",this,a,!0))});return!1}f.event.add(this,"beforeactivate._change",function(a){var b=a.target;z.test(b.nodeName)&&!b._change_attached&&(f.event.add(b,"change._change",function(a){this.parentNode&&!a.isSimulated&&!a.isTrigger&&f.event.simulate("change",this.parentNode,a,!0)}),b._change_attached=!0)})},handle:function(a){var b=a.target;if(this!==b||a.isSimulated||a.isTrigger||b.type!=="radio"&&b.type!=="checkbox")return a.handleObj.handler.apply(this,arguments)},teardown:function(){f.event.remove(this,"._change");return z.test(this.nodeName)}}),f.support.focusinBubbles||f.each({focus:"focusin",blur:"focusout"},function(a,b){var d=0,e=function(a){f.event.simulate(b,a.target,f.event.fix(a),!0)};f.event.special[b]={setup:function(){d++===0&&c.addEventListener(a,e,!0)},teardown:function(){--d===0&&c.removeEventListener(a,e,!0)}}}),f.fn.extend({on:function(a,c,d,e,g){var h,i;if(typeof a=="object"){typeof c!="string"&&(d=c,c=b);for(i in a)this.on(i,c,d,a[i],g);return this}d==null&&e==null?(e=c,d=c=b):e==null&&(typeof c=="string"?(e=d,d=b):(e=d,d=c,c=b));if(e===!1)e=J;else if(!e)return this;g===1&&(h=e,e=function(a){f().off(a);return h.apply(this,arguments)},e.guid=h.guid||(h.guid=f.guid++));return this.each(function(){f.event.add(this,a,e,d,c)})},one:function(a,b,c,d){return this.on.call(this,a,b,c,d,1)},off:function(a,c,d){if(a&&a.preventDefault&&a.handleObj){var e=a.handleObj;f(a.delegateTarget).off(e.namespace?e.type+"."+e.namespace:e.type,e.selector,e.handler);return this}if(typeof a=="object"){for(var g in a)this.off(g,c,a[g]);return this}if(c===!1||typeof c=="function")d=c,c=b;d===!1&&(d=J);return this.each(function(){f.event.remove(this,a,d,c)})},bind:function(a,b,c){return this.on(a,null,b,c)},unbind:function(a,b){return this.off(a,null,b)},live:function(a,b,c){f(this.context).on(a,this.selector,b,c);return this},die:function(a,b){f(this.context).off(a,this.selector||"**",b);return this},delegate:function(a,b,c,d){return this.on(b,a,c,d)},undelegate:function(a,b,c){return arguments.length==1?this.off(a,"**"):this.off(b,a,c)},trigger:function(a,b){return this.each(function(){f.event.trigger(a,b,this)})},triggerHandler:function(a,b){if(this[0])return f.event.trigger(a,b,this[0],!0)},toggle:function(a){var b=arguments,c=a.guid||f.guid++,d=0,e=function(c){var e=(f._data(this,"lastToggle"+a.guid)||0)%d;f._data(this,"lastToggle"+a.guid,e+1),c.preventDefault();return b[e].apply(this,arguments)||!1};e.guid=c;while(d<b.length)b[d++].guid=c;return this.click(e)},hover:function(a,b){return this.mouseenter(a).mouseleave(b||a)}}),f.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "),function(a,b){f.fn[b]=function(a,c){c==null&&(c=a,a=null);return arguments.length>0?this.on(b,null,a,c):this.trigger(b)},f.attrFn&&(f.attrFn[b]=!0),C.test(b)&&(f.event.fixHooks[b]=f.event.keyHooks),D.test(b)&&(f.event.fixHooks[b]=f.event.mouseHooks)}),function(){function x(a,b,c,e,f,g){for(var h=0,i=e.length;h<i;h++){var j=e[h];if(j){var k=!1;j=j[a];while(j){if(j[d]===c){k=e[j.sizset];break}if(j.nodeType===1){g||(j[d]=c,j.sizset=h);if(typeof b!="string"){if(j===b){k=!0;break}}else if(m.filter(b,[j]).length>0){k=j;break}}j=j[a]}e[h]=k}}}function w(a,b,c,e,f,g){for(var h=0,i=e.length;h<i;h++){var j=e[h];if(j){var k=!1;j=j[a];while(j){if(j[d]===c){k=e[j.sizset];break}j.nodeType===1&&!g&&(j[d]=c,j.sizset=h);if(j.nodeName.toLowerCase()===b){k=j;break}j=j[a]}e[h]=k}}}var a=/((?:\((?:\([^()]+\)|[^()]+)+\)|\[(?:\[[^\[\]]*\]|['"][^'"]*['"]|[^\[\]'"]+)+\]|\\.|[^ >+~,(\[\\]+)+|[>+~])(\s*,\s*)?((?:.|\r|\n)*)/g,d="sizcache"+(Math.random()+"").replace(".",""),e=0,g=Object.prototype.toString,h=!1,i=!0,j=/\\/g,k=/\r\n/g,l=/\W/;[0,0].sort(function(){i=!1;return 0});var m=function(b,d,e,f){e=e||[],d=d||c;var h=d;if(d.nodeType!==1&&d.nodeType!==9)return[];if(!b||typeof b!="string")return e;var i,j,k,l,n,q,r,t,u=!0,v=m.isXML(d),w=[],x=b;do{a.exec(""),i=a.exec(x);if(i){x=i[3],w.push(i[1]);if(i[2]){l=i[3];break}}}while(i);if(w.length>1&&p.exec(b))if(w.length===2&&o.relative[w[0]])j=y(w[0]+w[1],d,f);else{j=o.relative[w[0]]?[d]:m(w.shift(),d);while(w.length)b=w.shift(),o.relative[b]&&(b+=w.shift()),j=y(b,j,f)}else{!f&&w.length>1&&d.nodeType===9&&!v&&o.match.ID.test(w[0])&&!o.match.ID.test(w[w.length-1])&&(n=m.find(w.shift(),d,v),d=n.expr?m.filter(n.expr,n.set)[0]:n.set[0]);if(d){n=f?{expr:w.pop(),set:s(f)}:m.find(w.pop(),w.length===1&&(w[0]==="~"||w[0]==="+")&&d.parentNode?d.parentNode:d,v),j=n.expr?m.filter(n.expr,n.set):n.set,w.length>0?k=s(j):u=!1;while(w.length)q=w.pop(),r=q,o.relative[q]?r=w.pop():q="",r==null&&(r=d),o.relative[q](k,r,v)}else k=w=[]}k||(k=j),k||m.error(q||b);if(g.call(k)==="[object Array]")if(!u)e.push.apply(e,k);else if(d&&d.nodeType===1)for(t=0;k[t]!=null;t++)k[t]&&(k[t]===!0||k[t].nodeType===1&&m.contains(d,k[t]))&&e.push(j[t]);else for(t=0;k[t]!=null;t++)k[t]&&k[t].nodeType===1&&e.push(j[t]);else s(k,e);l&&(m(l,h,e,f),m.uniqueSort(e));return e};m.uniqueSort=function(a){if(u){h=i,a.sort(u);if(h)for(var b=1;b<a.length;b++)a[b]===a[b-1]&&a.splice(b--,1)}return a},m.matches=function(a,b){return m(a,null,null,b)},m.matchesSelector=function(a,b){return m(b,null,null,[a]).length>0},m.find=function(a,b,c){var d,e,f,g,h,i;if(!a)return[];for(e=0,f=o.order.length;e<f;e++){h=o.order[e];if(g=o.leftMatch[h].exec(a)){i=g[1],g.splice(1,1);if(i.substr(i.length-1)!=="\\"){g[1]=(g[1]||"").replace(j,""),d=o.find[h](g,b,c);if(d!=null){a=a.replace(o.match[h],"");break}}}}d||(d=typeof b.getElementsByTagName!="undefined"?b.getElementsByTagName("*"):[]);return{set:d,expr:a}},m.filter=function(a,c,d,e){var f,g,h,i,j,k,l,n,p,q=a,r=[],s=c,t=c&&c[0]&&m.isXML(c[0]);while(a&&c.length){for(h in o.filter)if((f=o.leftMatch[h].exec(a))!=null&&f[2]){k=o.filter[h],l=f[1],g=!1,f.splice(1,1);if(l.substr(l.length-1)==="\\")continue;s===r&&(r=[]);if(o.preFilter[h]){f=o.preFilter[h](f,s,d,r,e,t);if(!f)g=i=!0;else if(f===!0)continue}if(f)for(n=0;(j=s[n])!=null;n++)j&&(i=k(j,f,n,s),p=e^i,d&&i!=null?p?g=!0:s[n]=!1:p&&(r.push(j),g=!0));if(i!==b){d||(s=r),a=a.replace(o.match[h],"");if(!g)return[];break}}if(a===q)if(g==null)m.error(a);else break;q=a}return s},m.error=function(a){throw new Error("Syntax error, unrecognized expression: "+a)};var n=m.getText=function(a){var b,c,d=a.nodeType,e="";if(d){if(d===1||d===9){if(typeof a.textContent=="string")return a.textContent;if(typeof a.innerText=="string")return a.innerText.replace(k,"");for(a=a.firstChild;a;a=a.nextSibling)e+=n(a)}else if(d===3||d===4)return a.nodeValue}else for(b=0;c=a[b];b++)c.nodeType!==8&&(e+=n(c));return e},o=m.selectors={order:["ID","NAME","TAG"],match:{ID:/#((?:[\w\u00c0-\uFFFF\-]|\\.)+)/,CLASS:/\.((?:[\w\u00c0-\uFFFF\-]|\\.)+)/,NAME:/\[name=['"]*((?:[\w\u00c0-\uFFFF\-]|\\.)+)['"]*\]/,ATTR:/\[\s*((?:[\w\u00c0-\uFFFF\-]|\\.)+)\s*(?:(\S?=)\s*(?:(['"])(.*?)\3|(#?(?:[\w\u00c0-\uFFFF\-]|\\.)*)|)|)\s*\]/,TAG:/^((?:[\w\u00c0-\uFFFF\*\-]|\\.)+)/,CHILD:/:(only|nth|last|first)-child(?:\(\s*(even|odd|(?:[+\-]?\d+|(?:[+\-]?\d*)?n\s*(?:[+\-]\s*\d+)?))\s*\))?/,POS:/:(nth|eq|gt|lt|first|last|even|odd)(?:\((\d*)\))?(?=[^\-]|$)/,PSEUDO:/:((?:[\w\u00c0-\uFFFF\-]|\\.)+)(?:\((['"]?)((?:\([^\)]+\)|[^\(\)]*)+)\2\))?/},leftMatch:{},attrMap:{"class":"className","for":"htmlFor"},attrHandle:{href:function(a){return a.getAttribute("href")},type:function(a){return a.getAttribute("type")}},relative:{"+":function(a,b){var c=typeof b=="string",d=c&&!l.test(b),e=c&&!d;d&&(b=b.toLowerCase());for(var f=0,g=a.length,h;f<g;f++)if(h=a[f]){while((h=h.previousSibling)&&h.nodeType!==1);a[f]=e||h&&h.nodeName.toLowerCase()===b?h||!1:h===b}e&&m.filter(b,a,!0)},">":function(a,b){var c,d=typeof b=="string",e=0,f=a.length;if(d&&!l.test(b)){b=b.toLowerCase();for(;e<f;e++){c=a[e];if(c){var g=c.parentNode;a[e]=g.nodeName.toLowerCase()===b?g:!1}}}else{for(;e<f;e++)c=a[e],c&&(a[e]=d?c.parentNode:c.parentNode===b);d&&m.filter(b,a,!0)}},"":function(a,b,c){var d,f=e++,g=x;typeof b=="string"&&!l.test(b)&&(b=b.toLowerCase(),d=b,g=w),g("parentNode",b,f,a,d,c)},"~":function(a,b,c){var d,f=e++,g=x;typeof b=="string"&&!l.test(b)&&(b=b.toLowerCase(),d=b,g=w),g("previousSibling",b,f,a,d,c)}},find:{ID:function(a,b,c){if(typeof b.getElementById!="undefined"&&!c){var d=b.getElementById(a[1]);return d&&d.parentNode?[d]:[]}},NAME:function(a,b){if(typeof b.getElementsByName!="undefined"){var c=[],d=b.getElementsByName(a[1]);for(var e=0,f=d.length;e<f;e++)d[e].getAttribute("name")===a[1]&&c.push(d[e]);return c.length===0?null:c}},TAG:function(a,b){if(typeof b.getElementsByTagName!="undefined")return b.getElementsByTagName(a[1])}},preFilter:{CLASS:function(a,b,c,d,e,f){a=" "+a[1].replace(j,"")+" ";if(f)return a;for(var g=0,h;(h=b[g])!=null;g++)h&&(e^(h.className&&(" "+h.className+" ").replace(/[\t\n\r]/g," ").indexOf(a)>=0)?c||d.push(h):c&&(b[g]=!1));return!1},ID:function(a){return a[1].replace(j,"")},TAG:function(a,b){return a[1].replace(j,"").toLowerCase()},CHILD:function(a){if(a[1]==="nth"){a[2]||m.error(a[0]),a[2]=a[2].replace(/^\+|\s*/g,"");var b=/(-?)(\d*)(?:n([+\-]?\d*))?/.exec(a[2]==="even"&&"2n"||a[2]==="odd"&&"2n+1"||!/\D/.test(a[2])&&"0n+"+a[2]||a[2]);a[2]=b[1]+(b[2]||1)-0,a[3]=b[3]-0}else a[2]&&m.error(a[0]);a[0]=e++;return a},ATTR:function(a,b,c,d,e,f){var g=a[1]=a[1].replace(j,"");!f&&o.attrMap[g]&&(a[1]=o.attrMap[g]),a[4]=(a[4]||a[5]||"").replace(j,""),a[2]==="~="&&(a[4]=" "+a[4]+" ");return a},PSEUDO:function(b,c,d,e,f){if(b[1]==="not")if((a.exec(b[3])||"").length>1||/^\w/.test(b[3]))b[3]=m(b[3],null,null,c);else{var g=m.filter(b[3],c,d,!0^f);d||e.push.apply(e,g);return!1}else if(o.match.POS.test(b[0])||o.match.CHILD.test(b[0]))return!0;return b},POS:function(a){a.unshift(!0);return a}},filters:{enabled:function(a){return a.disabled===!1&&a.type!=="hidden"},disabled:function(a){return a.disabled===!0},checked:function(a){return a.checked===!0},selected:function(a){a.parentNode&&a.parentNode.selectedIndex;return a.selected===!0},parent:function(a){return!!a.firstChild},empty:function(a){return!a.firstChild},has:function(a,b,c){return!!m(c[3],a).length},header:function(a){return/h\d/i.test(a.nodeName)},text:function(a){var b=a.getAttribute("type"),c=a.type;return a.nodeName.toLowerCase()==="input"&&"text"===c&&(b===c||b===null)},radio:function(a){return a.nodeName.toLowerCase()==="input"&&"radio"===a.type},checkbox:function(a){return a.nodeName.toLowerCase()==="input"&&"checkbox"===a.type},file:function(a){return a.nodeName.toLowerCase()==="input"&&"file"===a.type},password:function(a){return a.nodeName.toLowerCase()==="input"&&"password"===a.type},submit:function(a){var b=a.nodeName.toLowerCase();return(b==="input"||b==="button")&&"submit"===a.type},image:function(a){return a.nodeName.toLowerCase()==="input"&&"image"===a.type},reset:function(a){var b=a.nodeName.toLowerCase();return(b==="input"||b==="button")&&"reset"===a.type},button:function(a){var b=a.nodeName.toLowerCase();return b==="input"&&"button"===a.type||b==="button"},input:function(a){return/input|select|textarea|button/i.test(a.nodeName)},focus:function(a){return a===a.ownerDocument.activeElement}},setFilters:{first:function(a,b){return b===0},last:function(a,b,c,d){return b===d.length-1},even:function(a,b){return b%2===0},odd:function(a,b){return b%2===1},lt:function(a,b,c){return b<c[3]-0},gt:function(a,b,c){return b>c[3]-0},nth:function(a,b,c){return c[3]-0===b},eq:function(a,b,c){return c[3]-0===b}},filter:{PSEUDO:function(a,b,c,d){var e=b[1],f=o.filters[e];if(f)return f(a,c,b,d);if(e==="contains")return(a.textContent||a.innerText||n([a])||"").indexOf(b[3])>=0;if(e==="not"){var g=b[3];for(var h=0,i=g.length;h<i;h++)if(g[h]===a)return!1;return!0}m.error(e)},CHILD:function(a,b){var c,e,f,g,h,i,j,k=b[1],l=a;switch(k){case"only":case"first":while(l=l.previousSibling)if(l.nodeType===1)return!1;if(k==="first")return!0;l=a;case"last":while(l=l.nextSibling)if(l.nodeType===1)return!1;return!0;case"nth":c=b[2],e=b[3];if(c===1&&e===0)return!0;f=b[0],g=a.parentNode;if(g&&(g[d]!==f||!a.nodeIndex)){i=0;for(l=g.firstChild;l;l=l.nextSibling)l.nodeType===1&&(l.nodeIndex=++i);g[d]=f}j=a.nodeIndex-e;return c===0?j===0:j%c===0&&j/c>=0}},ID:function(a,b){return a.nodeType===1&&a.getAttribute("id")===b},TAG:function(a,b){return b==="*"&&a.nodeType===1||!!a.nodeName&&a.nodeName.toLowerCase()===b},CLASS:function(a,b){return(" "+(a.className||a.getAttribute("class"))+" ").indexOf(b)>-1},ATTR:function(a,b){var c=b[1],d=m.attr?m.attr(a,c):o.attrHandle[c]?o.attrHandle[c](a):a[c]!=null?a[c]:a.getAttribute(c),e=d+"",f=b[2],g=b[4];return d==null?f==="!=":!f&&m.attr?d!=null:f==="="?e===g:f==="*="?e.indexOf(g)>=0:f==="~="?(" "+e+" ").indexOf(g)>=0:g?f==="!="?e!==g:f==="^="?e.indexOf(g)===0:f==="$="?e.substr(e.length-g.length)===g:f==="|="?e===g||e.substr(0,g.length+1)===g+"-":!1:e&&d!==!1},POS:function(a,b,c,d){var e=b[2],f=o.setFilters[e];if(f)return f(a,c,b,d)}}},p=o.match.POS,q=function(a,b){return"\\"+(b-0+1)};for(var r in o.match)o.match[r]=new RegExp(o.match[r].source+/(?![^\[]*\])(?![^\(]*\))/.source),o.leftMatch[r]=new RegExp(/(^(?:.|\r|\n)*?)/.source+o.match[r].source.replace(/\\(\d+)/g,q));var s=function(a,b){a=Array.prototype.slice.call(a,0);if(b){b.push.apply(b,a);return b}return a};try{Array.prototype.slice.call(c.documentElement.childNodes,0)[0].nodeType}catch(t){s=function(a,b){var c=0,d=b||[];if(g.call(a)==="[object Array]")Array.prototype.push.apply(d,a);else if(typeof a.length=="number")for(var e=a.length;c<e;c++)d.push(a[c]);else for(;a[c];c++)d.push(a[c]);return d}}var u,v;c.documentElement.compareDocumentPosition?u=function(a,b){if(a===b){h=!0;return 0}if(!a.compareDocumentPosition||!b.compareDocumentPosition)return a.compareDocumentPosition?-1:1;return a.compareDocumentPosition(b)&4?-1:1}:(u=function(a,b){if(a===b){h=!0;return 0}if(a.sourceIndex&&b.sourceIndex)return a.sourceIndex-b.sourceIndex;var c,d,e=[],f=[],g=a.parentNode,i=b.parentNode,j=g;if(g===i)return v(a,b);if(!g)return-1;if(!i)return 1;while(j)e.unshift(j),j=j.parentNode;j=i;while(j)f.unshift(j),j=j.parentNode;c=e.length,d=f.length;for(var k=0;k<c&&k<d;k++)if(e[k]!==f[k])return v(e[k],f[k]);return k===c?v(a,f[k],-1):v(e[k],b,1)},v=function(a,b,c){if(a===b)return c;var d=a.nextSibling;while(d){if(d===b)return-1;d=d.nextSibling}return 1}),function(){var a=c.createElement("div"),d="script"+(new Date).getTime(),e=c.documentElement;a.innerHTML="<a name='"+d+"'/>",e.insertBefore(a,e.firstChild),c.getElementById(d)&&(o.find.ID=function(a,c,d){if(typeof c.getElementById!="undefined"&&!d){var e=c.getElementById(a[1]);return e?e.id===a[1]||typeof e.getAttributeNode!="undefined"&&e.getAttributeNode("id").nodeValue===a[1]?[e]:b:[]}},o.filter.ID=function(a,b){var c=typeof a.getAttributeNode!="undefined"&&a.getAttributeNode("id");return a.nodeType===1&&c&&c.nodeValue===b}),e.removeChild(a),e=a=null}(),function(){var a=c.createElement("div");a.appendChild(c.createComment("")),a.getElementsByTagName("*").length>0&&(o.find.TAG=function(a,b){var c=b.getElementsByTagName(a[1]);if(a[1]==="*"){var d=[];for(var e=0;c[e];e++)c[e].nodeType===1&&d.push(c[e]);c=d}return c}),a.innerHTML="<a href='#'></a>",a.firstChild&&typeof a.firstChild.getAttribute!="undefined"&&a.firstChild.getAttribute("href")!=="#"&&(o.attrHandle.href=function(a){return a.getAttribute("href",2)}),a=null}(),c.querySelectorAll&&function(){var a=m,b=c.createElement("div"),d="__sizzle__";b.innerHTML="<p class='TEST'></p>";if(!b.querySelectorAll||b.querySelectorAll(".TEST").length!==0){m=function(b,e,f,g){e=e||c;if(!g&&!m.isXML(e)){var h=/^(\w+$)|^\.([\w\-]+$)|^#([\w\-]+$)/.exec(b);if(h&&(e.nodeType===1||e.nodeType===9)){if(h[1])return s(e.getElementsByTagName(b),f);if(h[2]&&o.find.CLASS&&e.getElementsByClassName)return s(e.getElementsByClassName(h[2]),f)}if(e.nodeType===9){if(b==="body"&&e.body)return s([e.body],f);if(h&&h[3]){var i=e.getElementById(h[3]);if(!i||!i.parentNode)return s([],f);if(i.id===h[3])return s([i],f)}try{return s(e.querySelectorAll(b),f)}catch(j){}}else if(e.nodeType===1&&e.nodeName.toLowerCase()!=="object"){var k=e,l=e.getAttribute("id"),n=l||d,p=e.parentNode,q=/^\s*[+~]/.test(b);l?n=n.replace(/'/g,"\\$&"):e.setAttribute("id",n),q&&p&&(e=e.parentNode);try{if(!q||p)return s(e.querySelectorAll("[id='"+n+"'] "+b),f)}catch(r){}finally{l||k.removeAttribute("id")}}}return a(b,e,f,g)};for(var e in a)m[e]=a[e];b=null}}(),function(){var a=c.documentElement,b=a.matchesSelector||a.mozMatchesSelector||a.webkitMatchesSelector||a.msMatchesSelector;if(b){var d=!b.call(c.createElement("div"),"div"),e=!1;try{b.call(c.documentElement,"[test!='']:sizzle")}catch(f){e=!0}m.matchesSelector=function(a,c){c=c.replace(/\=\s*([^'"\]]*)\s*\]/g,"='$1']");if(!m.isXML(a))try{if(e||!o.match.PSEUDO.test(c)&&!/!=/.test(c)){var f=b.call(a,c);if(f||!d||a.document&&a.document.nodeType!==11)return f}}catch(g){}return m(c,null,null,[a]).length>0}}}(),function(){var a=c.createElement("div");a.innerHTML="<div class='test e'></div><div class='test'></div>";if(!!a.getElementsByClassName&&a.getElementsByClassName("e").length!==0){a.lastChild.className="e";if(a.getElementsByClassName("e").length===1)return;o.order.splice(1,0,"CLASS"),o.find.CLASS=function(a,b,c){if(typeof b.getElementsByClassName!="undefined"&&!c)return b.getElementsByClassName(a[1])},a=null}}(),c.documentElement.contains?m.contains=function(a,b){return a!==b&&(a.contains?a.contains(b):!0)}:c.documentElement.compareDocumentPosition?m.contains=function(a,b){return!!(a.compareDocumentPosition(b)&16)}:m.contains=function(){return!1},m.isXML=function(a){var b=(a?a.ownerDocument||a:0).documentElement;return b?b.nodeName!=="HTML":!1};var y=function(a,b,c){var d,e=[],f="",g=b.nodeType?[b]:b;while(d=o.match.PSEUDO.exec(a))f+=d[0],a=a.replace(o.match.PSEUDO,"");a=o.relative[a]?a+"*":a;for(var h=0,i=g.length;h<i;h++)m(a,g[h],e,c);return m.filter(f,e)};m.attr=f.attr,m.selectors.attrMap={},f.find=m,f.expr=m.selectors,f.expr[":"]=f.expr.filters,f.unique=m.uniqueSort,f.text=m.getText,f.isXMLDoc=m.isXML,f.contains=m.contains}();var L=/Until$/,M=/^(?:parents|prevUntil|prevAll)/,N=/,/,O=/^.[^:#\[\.,]*$/,P=Array.prototype.slice,Q=f.expr.match.POS,R={children:!0,contents:!0,next:!0,prev:!0};f.fn.extend({find:function(a){var b=this,c,d;if(typeof a!="string")return f(a).filter(function(){for(c=0,d=b.length;c<d;c++)if(f.contains(b[c],this))return!0});var e=this.pushStack("","find",a),g,h,i;for(c=0,d=this.length;c<d;c++){g=e.length,f.find(a,this[c],e);if(c>0)for(h=g;h<e.length;h++)for(i=0;i<g;i++)if(e[i]===e[h]){e.splice(h--,1);break}}return e},has:function(a){var b=f(a);return this.filter(function(){for(var a=0,c=b.length;a<c;a++)if(f.contains(this,b[a]))return!0})},not:function(a){return this.pushStack(T(this,a,!1),"not",a)},filter:function(a){return this.pushStack(T(this,a,!0),"filter",a)},is:function(a){return!!a&&(typeof a=="string"?Q.test(a)?f(a,this.context).index(this[0])>=0:f.filter(a,this).length>0:this.filter(a).length>0)},closest:function(a,b){var c=[],d,e,g=this[0];if(f.isArray(a)){var h=1;while(g&&g.ownerDocument&&g!==b){for(d=0;d<a.length;d++)f(g).is(a[d])&&c.push({selector:a[d],elem:g,level:h});g=g.parentNode,h++}return c}var i=Q.test(a)||typeof a!="string"?f(a,b||this.context):0;for(d=0,e=this.length;d<e;d++){g=this[d];while(g){if(i?i.index(g)>-1:f.find.matchesSelector(g,a)){c.push(g);break}g=g.parentNode;if(!g||!g.ownerDocument||g===b||g.nodeType===11)break}}c=c.length>1?f.unique(c):c;return this.pushStack(c,"closest",a)},index:function(a){if(!a)return this[0]&&this[0].parentNode?this.prevAll().length:-1;if(typeof a=="string")return f.inArray(this[0],f(a));return f.inArray(a.jquery?a[0]:a,this)},add:function(a,b){var c=typeof a=="string"?f(a,b):f.makeArray(a&&a.nodeType?[a]:a),d=f.merge(this.get(),c);return this.pushStack(S(c[0])||S(d[0])?d:f.unique(d))},andSelf:function(){return this.add(this.prevObject)}}),f.each({parent:function(a){var b=a.parentNode;return b&&b.nodeType!==11?b:null},parents:function(a){return f.dir(a,"parentNode")},parentsUntil:function(a,b,c){return f.dir(a,"parentNode",c)},next:function(a){return f.nth(a,2,"nextSibling")},prev:function(a){return f.nth(a,2,"previousSibling")},nextAll:function(a){return f.dir(a,"nextSibling")},prevAll:function(a){return f.dir(a,"previousSibling")},nextUntil:function(a,b,c){return f.dir(a,"nextSibling",c)},prevUntil:function(a,b,c){return f.dir(a,"previousSibling",c)},siblings:function(a){return f.sibling(a.parentNode.firstChild,a)},children:function(a){return f.sibling(a.firstChild)},contents:function(a){return f.nodeName(a,"iframe")?a.contentDocument||a.contentWindow.document:f.makeArray(a.childNodes)}},function(a,b){f.fn[a]=function(c,d){var e=f.map(this,b,c);L.test(a)||(d=c),d&&typeof d=="string"&&(e=f.filter(d,e)),e=this.length>1&&!R[a]?f.unique(e):e,(this.length>1||N.test(d))&&M.test(a)&&(e=e.reverse());return this.pushStack(e,a,P.call(arguments).join(","))}}),f.extend({filter:function(a,b,c){c&&(a=":not("+a+")");return b.length===1?f.find.matchesSelector(b[0],a)?[b[0]]:[]:f.find.matches(a,b)},dir:function(a,c,d){var e=[],g=a[c];while(g&&g.nodeType!==9&&(d===b||g.nodeType!==1||!f(g).is(d)))g.nodeType===1&&e.push(g),g=g[c];return e},nth:function(a,b,c,d){b=b||1;var e=0;for(;a;a=a[c])if(a.nodeType===1&&++e===b)break;return a},sibling:function(a,b){var c=[];for(;a;a=a.nextSibling)a.nodeType===1&&a!==b&&c.push(a);return c}});var V="abbr|article|aside|audio|canvas|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",W=/ jQuery\d+="(?:\d+|null)"/g,X=/^\s+/,Y=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/ig,Z=/<([\w:]+)/,$=/<tbody/i,_=/<|&#?\w+;/,ba=/<(?:script|style)/i,bb=/<(?:script|object|embed|option|style)/i,bc=new RegExp("<(?:"+V+")","i"),bd=/checked\s*(?:[^=]|=\s*.checked.)/i,be=/\/(java|ecma)script/i,bf=/^\s*<!(?:\[CDATA\[|\-\-)/,bg={option:[1,"<select multiple='multiple'>","</select>"],legend:[1,"<fieldset>","</fieldset>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],area:[1,"<map>","</map>"],_default:[0,"",""]},bh=U(c);bg.optgroup=bg.option,bg.tbody=bg.tfoot=bg.colgroup=bg.caption=bg.thead,bg.th=bg.td,f.support.htmlSerialize||(bg._default=[1,"div<div>","</div>"]),f.fn.extend({text:function(a){if(f.isFunction(a))return this.each(function(b){var c=f(this);c.text(a.call(this,b,c.text()))});if(typeof a!="object"&&a!==b)return this.empty().append((this[0]&&this[0].ownerDocument||c).createTextNode(a));return f.text(this)},wrapAll:function(a){if(f.isFunction(a))return this.each(function(b){f(this).wrapAll(a.call(this,b))});if(this[0]){var b=f(a,this[0].ownerDocument).eq(0).clone(!0);this[0].parentNode&&b.insertBefore(this[0]),b.map(function(){var a=this;while(a.firstChild&&a.firstChild.nodeType===1)a=a.firstChild;return a}).append(this)}return this},wrapInner:function(a){if(f.isFunction(a))return this.each(function(b){f(this).wrapInner(a.call(this,b))});return this.each(function(){var b=f(this),c=b.contents();c.length?c.wrapAll(a):b.append(a)})},wrap:function(a){var b=f.isFunction(a);return this.each(function(c){f(this).wrapAll(b?a.call(this,c):a)})},unwrap:function(){return this.parent().each(function(){f.nodeName(this,"body")||f(this).replaceWith(this.childNodes)}).end()},append:function(){return this.domManip(arguments,!0,function(a){this.nodeType===1&&this.appendChild(a)})},prepend:function(){return this.domManip(arguments,!0,function(a){this.nodeType===1&&this.insertBefore(a,this.firstChild)})},before:function(){if(this[0]&&this[0].parentNode)return this.domManip(arguments,!1,function(a){this.parentNode.insertBefore(a,this)});if(arguments.length){var a=f.clean(arguments);a.push.apply(a,this.toArray());return this.pushStack(a,"before",arguments)}},after:function(){if(this[0]&&this[0].parentNode)return this.domManip(arguments,!1,function(a){this.parentNode.insertBefore(a,this.nextSibling)});if(arguments.length){var a=this.pushStack(this,"after",arguments);a.push.apply(a,f.clean(arguments));return a}},remove:function(a,b){for(var c=0,d;(d=this[c])!=null;c++)if(!a||f.filter(a,[d]).length)!b&&d.nodeType===1&&(f.cleanData(d.getElementsByTagName("*")),f.cleanData([d])),d.parentNode&&d.parentNode.removeChild(d);return this},empty:function()
{for(var a=0,b;(b=this[a])!=null;a++){b.nodeType===1&&f.cleanData(b.getElementsByTagName("*"));while(b.firstChild)b.removeChild(b.firstChild)}return this},clone:function(a,b){a=a==null?!1:a,b=b==null?a:b;return this.map(function(){return f.clone(this,a,b)})},html:function(a){if(a===b)return this[0]&&this[0].nodeType===1?this[0].innerHTML.replace(W,""):null;if(typeof a=="string"&&!ba.test(a)&&(f.support.leadingWhitespace||!X.test(a))&&!bg[(Z.exec(a)||["",""])[1].toLowerCase()]){a=a.replace(Y,"<$1></$2>");try{for(var c=0,d=this.length;c<d;c++)this[c].nodeType===1&&(f.cleanData(this[c].getElementsByTagName("*")),this[c].innerHTML=a)}catch(e){this.empty().append(a)}}else f.isFunction(a)?this.each(function(b){var c=f(this);c.html(a.call(this,b,c.html()))}):this.empty().append(a);return this},replaceWith:function(a){if(this[0]&&this[0].parentNode){if(f.isFunction(a))return this.each(function(b){var c=f(this),d=c.html();c.replaceWith(a.call(this,b,d))});typeof a!="string"&&(a=f(a).detach());return this.each(function(){var b=this.nextSibling,c=this.parentNode;f(this).remove(),b?f(b).before(a):f(c).append(a)})}return this.length?this.pushStack(f(f.isFunction(a)?a():a),"replaceWith",a):this},detach:function(a){return this.remove(a,!0)},domManip:function(a,c,d){var e,g,h,i,j=a[0],k=[];if(!f.support.checkClone&&arguments.length===3&&typeof j=="string"&&bd.test(j))return this.each(function(){f(this).domManip(a,c,d,!0)});if(f.isFunction(j))return this.each(function(e){var g=f(this);a[0]=j.call(this,e,c?g.html():b),g.domManip(a,c,d)});if(this[0]){i=j&&j.parentNode,f.support.parentNode&&i&&i.nodeType===11&&i.childNodes.length===this.length?e={fragment:i}:e=f.buildFragment(a,this,k),h=e.fragment,h.childNodes.length===1?g=h=h.firstChild:g=h.firstChild;if(g){c=c&&f.nodeName(g,"tr");for(var l=0,m=this.length,n=m-1;l<m;l++)d.call(c?bi(this[l],g):this[l],e.cacheable||m>1&&l<n?f.clone(h,!0,!0):h)}k.length&&f.each(k,bp)}return this}}),f.buildFragment=function(a,b,d){var e,g,h,i,j=a[0];b&&b[0]&&(i=b[0].ownerDocument||b[0]),i.createDocumentFragment||(i=c),a.length===1&&typeof j=="string"&&j.length<512&&i===c&&j.charAt(0)==="<"&&!bb.test(j)&&(f.support.checkClone||!bd.test(j))&&(f.support.html5Clone||!bc.test(j))&&(g=!0,h=f.fragments[j],h&&h!==1&&(e=h)),e||(e=i.createDocumentFragment(),f.clean(a,i,e,d)),g&&(f.fragments[j]=h?e:1);return{fragment:e,cacheable:g}},f.fragments={},f.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(a,b){f.fn[a]=function(c){var d=[],e=f(c),g=this.length===1&&this[0].parentNode;if(g&&g.nodeType===11&&g.childNodes.length===1&&e.length===1){e[b](this[0]);return this}for(var h=0,i=e.length;h<i;h++){var j=(h>0?this.clone(!0):this).get();f(e[h])[b](j),d=d.concat(j)}return this.pushStack(d,a,e.selector)}}),f.extend({clone:function(a,b,c){var d,e,g,h=f.support.html5Clone||!bc.test("<"+a.nodeName)?a.cloneNode(!0):bo(a);if((!f.support.noCloneEvent||!f.support.noCloneChecked)&&(a.nodeType===1||a.nodeType===11)&&!f.isXMLDoc(a)){bk(a,h),d=bl(a),e=bl(h);for(g=0;d[g];++g)e[g]&&bk(d[g],e[g])}if(b){bj(a,h);if(c){d=bl(a),e=bl(h);for(g=0;d[g];++g)bj(d[g],e[g])}}d=e=null;return h},clean:function(a,b,d,e){var g;b=b||c,typeof b.createElement=="undefined"&&(b=b.ownerDocument||b[0]&&b[0].ownerDocument||c);var h=[],i;for(var j=0,k;(k=a[j])!=null;j++){typeof k=="number"&&(k+="");if(!k)continue;if(typeof k=="string")if(!_.test(k))k=b.createTextNode(k);else{k=k.replace(Y,"<$1></$2>");var l=(Z.exec(k)||["",""])[1].toLowerCase(),m=bg[l]||bg._default,n=m[0],o=b.createElement("div");b===c?bh.appendChild(o):U(b).appendChild(o),o.innerHTML=m[1]+k+m[2];while(n--)o=o.lastChild;if(!f.support.tbody){var p=$.test(k),q=l==="table"&&!p?o.firstChild&&o.firstChild.childNodes:m[1]==="<table>"&&!p?o.childNodes:[];for(i=q.length-1;i>=0;--i)f.nodeName(q[i],"tbody")&&!q[i].childNodes.length&&q[i].parentNode.removeChild(q[i])}!f.support.leadingWhitespace&&X.test(k)&&o.insertBefore(b.createTextNode(X.exec(k)[0]),o.firstChild),k=o.childNodes}var r;if(!f.support.appendChecked)if(k[0]&&typeof (r=k.length)=="number")for(i=0;i<r;i++)bn(k[i]);else bn(k);k.nodeType?h.push(k):h=f.merge(h,k)}if(d){g=function(a){return!a.type||be.test(a.type)};for(j=0;h[j];j++)if(e&&f.nodeName(h[j],"script")&&(!h[j].type||h[j].type.toLowerCase()==="text/javascript"))e.push(h[j].parentNode?h[j].parentNode.removeChild(h[j]):h[j]);else{if(h[j].nodeType===1){var s=f.grep(h[j].getElementsByTagName("script"),g);h.splice.apply(h,[j+1,0].concat(s))}d.appendChild(h[j])}}return h},cleanData:function(a){var b,c,d=f.cache,e=f.event.special,g=f.support.deleteExpando;for(var h=0,i;(i=a[h])!=null;h++){if(i.nodeName&&f.noData[i.nodeName.toLowerCase()])continue;c=i[f.expando];if(c){b=d[c];if(b&&b.events){for(var j in b.events)e[j]?f.event.remove(i,j):f.removeEvent(i,j,b.handle);b.handle&&(b.handle.elem=null)}g?delete i[f.expando]:i.removeAttribute&&i.removeAttribute(f.expando),delete d[c]}}}});var bq=/alpha\([^)]*\)/i,br=/opacity=([^)]*)/,bs=/([A-Z]|^ms)/g,bt=/^-?\d+(?:px)?$/i,bu=/^-?\d/,bv=/^([\-+])=([\-+.\de]+)/,bw={position:"absolute",visibility:"hidden",display:"block"},bx=["Left","Right"],by=["Top","Bottom"],bz,bA,bB;f.fn.css=function(a,c){if(arguments.length===2&&c===b)return this;return f.access(this,a,c,!0,function(a,c,d){return d!==b?f.style(a,c,d):f.css(a,c)})},f.extend({cssHooks:{opacity:{get:function(a,b){if(b){var c=bz(a,"opacity","opacity");return c===""?"1":c}return a.style.opacity}}},cssNumber:{fillOpacity:!0,fontWeight:!0,lineHeight:!0,opacity:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{"float":f.support.cssFloat?"cssFloat":"styleFloat"},style:function(a,c,d,e){if(!!a&&a.nodeType!==3&&a.nodeType!==8&&!!a.style){var g,h,i=f.camelCase(c),j=a.style,k=f.cssHooks[i];c=f.cssProps[i]||i;if(d===b){if(k&&"get"in k&&(g=k.get(a,!1,e))!==b)return g;return j[c]}h=typeof d,h==="string"&&(g=bv.exec(d))&&(d=+(g[1]+1)*+g[2]+parseFloat(f.css(a,c)),h="number");if(d==null||h==="number"&&isNaN(d))return;h==="number"&&!f.cssNumber[i]&&(d+="px");if(!k||!("set"in k)||(d=k.set(a,d))!==b)try{j[c]=d}catch(l){}}},css:function(a,c,d){var e,g;c=f.camelCase(c),g=f.cssHooks[c],c=f.cssProps[c]||c,c==="cssFloat"&&(c="float");if(g&&"get"in g&&(e=g.get(a,!0,d))!==b)return e;if(bz)return bz(a,c)},swap:function(a,b,c){var d={};for(var e in b)d[e]=a.style[e],a.style[e]=b[e];c.call(a);for(e in b)a.style[e]=d[e]}}),f.curCSS=f.css,f.each(["height","width"],function(a,b){f.cssHooks[b]={get:function(a,c,d){var e;if(c){if(a.offsetWidth!==0)return bC(a,b,d);f.swap(a,bw,function(){e=bC(a,b,d)});return e}},set:function(a,b){if(!bt.test(b))return b;b=parseFloat(b);if(b>=0)return b+"px"}}}),f.support.opacity||(f.cssHooks.opacity={get:function(a,b){return br.test((b&&a.currentStyle?a.currentStyle.filter:a.style.filter)||"")?parseFloat(RegExp.$1)/100+"":b?"1":""},set:function(a,b){var c=a.style,d=a.currentStyle,e=f.isNumeric(b)?"alpha(opacity="+b*100+")":"",g=d&&d.filter||c.filter||"";c.zoom=1;if(b>=1&&f.trim(g.replace(bq,""))===""){c.removeAttribute("filter");if(d&&!d.filter)return}c.filter=bq.test(g)?g.replace(bq,e):g+" "+e}}),f(function(){f.support.reliableMarginRight||(f.cssHooks.marginRight={get:function(a,b){var c;f.swap(a,{display:"inline-block"},function(){b?c=bz(a,"margin-right","marginRight"):c=a.style.marginRight});return c}})}),c.defaultView&&c.defaultView.getComputedStyle&&(bA=function(a,b){var c,d,e;b=b.replace(bs,"-$1").toLowerCase(),(d=a.ownerDocument.defaultView)&&(e=d.getComputedStyle(a,null))&&(c=e.getPropertyValue(b),c===""&&!f.contains(a.ownerDocument.documentElement,a)&&(c=f.style(a,b)));return c}),c.documentElement.currentStyle&&(bB=function(a,b){var c,d,e,f=a.currentStyle&&a.currentStyle[b],g=a.style;f===null&&g&&(e=g[b])&&(f=e),!bt.test(f)&&bu.test(f)&&(c=g.left,d=a.runtimeStyle&&a.runtimeStyle.left,d&&(a.runtimeStyle.left=a.currentStyle.left),g.left=b==="fontSize"?"1em":f||0,f=g.pixelLeft+"px",g.left=c,d&&(a.runtimeStyle.left=d));return f===""?"auto":f}),bz=bA||bB,f.expr&&f.expr.filters&&(f.expr.filters.hidden=function(a){var b=a.offsetWidth,c=a.offsetHeight;return b===0&&c===0||!f.support.reliableHiddenOffsets&&(a.style&&a.style.display||f.css(a,"display"))==="none"},f.expr.filters.visible=function(a){return!f.expr.filters.hidden(a)});var bD=/%20/g,bE=/\[\]$/,bF=/\r?\n/g,bG=/#.*$/,bH=/^(.*?):[ \t]*([^\r\n]*)\r?$/mg,bI=/^(?:color|date|datetime|datetime-local|email|hidden|month|number|password|range|search|tel|text|time|url|week)$/i,bJ=/^(?:about|app|app\-storage|.+\-extension|file|res|widget):$/,bK=/^(?:GET|HEAD)$/,bL=/^\/\//,bM=/\?/,bN=/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,bO=/^(?:select|textarea)/i,bP=/\s+/,bQ=/([?&])_=[^&]*/,bR=/^([\w\+\.\-]+:)(?:\/\/([^\/?#:]*)(?::(\d+))?)?/,bS=f.fn.load,bT={},bU={},bV,bW,bX=["*/"]+["*"];try{bV=e.href}catch(bY){bV=c.createElement("a"),bV.href="",bV=bV.href}bW=bR.exec(bV.toLowerCase())||[],f.fn.extend({load:function(a,c,d){if(typeof a!="string"&&bS)return bS.apply(this,arguments);if(!this.length)return this;var e=a.indexOf(" ");if(e>=0){var g=a.slice(e,a.length);a=a.slice(0,e)}var h="GET";c&&(f.isFunction(c)?(d=c,c=b):typeof c=="object"&&(c=f.param(c,f.ajaxSettings.traditional),h="POST"));var i=this;f.ajax({url:a,type:h,dataType:"html",data:c,complete:function(a,b,c){c=a.responseText,a.isResolved()&&(a.done(function(a){c=a}),i.html(g?f("<div>").append(c.replace(bN,"")).find(g):c)),d&&i.each(d,[c,b,a])}});return this},serialize:function(){return f.param(this.serializeArray())},serializeArray:function(){return this.map(function(){return this.elements?f.makeArray(this.elements):this}).filter(function(){return this.name&&!this.disabled&&(this.checked||bO.test(this.nodeName)||bI.test(this.type))}).map(function(a,b){var c=f(this).val();return c==null?null:f.isArray(c)?f.map(c,function(a,c){return{name:b.name,value:a.replace(bF,"\r\n")}}):{name:b.name,value:c.replace(bF,"\r\n")}}).get()}}),f.each("ajaxStart ajaxStop ajaxComplete ajaxError ajaxSuccess ajaxSend".split(" "),function(a,b){f.fn[b]=function(a){return this.on(b,a)}}),f.each(["get","post"],function(a,c){f[c]=function(a,d,e,g){f.isFunction(d)&&(g=g||e,e=d,d=b);return f.ajax({type:c,url:a,data:d,success:e,dataType:g})}}),f.extend({getScript:function(a,c){return f.get(a,b,c,"script")},getJSON:function(a,b,c){return f.get(a,b,c,"json")},ajaxSetup:function(a,b){b?b_(a,f.ajaxSettings):(b=a,a=f.ajaxSettings),b_(a,b);return a},ajaxSettings:{url:bV,isLocal:bJ.test(bW[1]),global:!0,type:"GET",contentType:"application/x-www-form-urlencoded",processData:!0,async:!0,accepts:{xml:"application/xml, text/xml",html:"text/html",text:"text/plain",json:"application/json, text/javascript","*":bX},contents:{xml:/xml/,html:/html/,json:/json/},responseFields:{xml:"responseXML",text:"responseText"},converters:{"* text":a.String,"text html":!0,"text json":f.parseJSON,"text xml":f.parseXML},flatOptions:{context:!0,url:!0}},ajaxPrefilter:bZ(bT),ajaxTransport:bZ(bU),ajax:function(a,c){function w(a,c,l,m){if(s!==2){s=2,q&&clearTimeout(q),p=b,n=m||"",v.readyState=a>0?4:0;var o,r,u,w=c,x=l?cb(d,v,l):b,y,z;if(a>=200&&a<300||a===304){if(d.ifModified){if(y=v.getResponseHeader("Last-Modified"))f.lastModified[k]=y;if(z=v.getResponseHeader("Etag"))f.etag[k]=z}if(a===304)w="notmodified",o=!0;else try{r=cc(d,x),w="success",o=!0}catch(A){w="parsererror",u=A}}else{u=w;if(!w||a)w="error",a<0&&(a=0)}v.status=a,v.statusText=""+(c||w),o?h.resolveWith(e,[r,w,v]):h.rejectWith(e,[v,w,u]),v.statusCode(j),j=b,t&&g.trigger("ajax"+(o?"Success":"Error"),[v,d,o?r:u]),i.fireWith(e,[v,w]),t&&(g.trigger("ajaxComplete",[v,d]),--f.active||f.event.trigger("ajaxStop"))}}typeof a=="object"&&(c=a,a=b),c=c||{};var d=f.ajaxSetup({},c),e=d.context||d,g=e!==d&&(e.nodeType||e instanceof f)?f(e):f.event,h=f.Deferred(),i=f.Callbacks("once memory"),j=d.statusCode||{},k,l={},m={},n,o,p,q,r,s=0,t,u,v={readyState:0,setRequestHeader:function(a,b){if(!s){var c=a.toLowerCase();a=m[c]=m[c]||a,l[a]=b}return this},getAllResponseHeaders:function(){return s===2?n:null},getResponseHeader:function(a){var c;if(s===2){if(!o){o={};while(c=bH.exec(n))o[c[1].toLowerCase()]=c[2]}c=o[a.toLowerCase()]}return c===b?null:c},overrideMimeType:function(a){s||(d.mimeType=a);return this},abort:function(a){a=a||"abort",p&&p.abort(a),w(0,a);return this}};h.promise(v),v.success=v.done,v.error=v.fail,v.complete=i.add,v.statusCode=function(a){if(a){var b;if(s<2)for(b in a)j[b]=[j[b],a[b]];else b=a[v.status],v.then(b,b)}return this},d.url=((a||d.url)+"").replace(bG,"").replace(bL,bW[1]+"//"),d.dataTypes=f.trim(d.dataType||"*").toLowerCase().split(bP),d.crossDomain==null&&(r=bR.exec(d.url.toLowerCase()),d.crossDomain=!(!r||r[1]==bW[1]&&r[2]==bW[2]&&(r[3]||(r[1]==="http:"?80:443))==(bW[3]||(bW[1]==="http:"?80:443)))),d.data&&d.processData&&typeof d.data!="string"&&(d.data=f.param(d.data,d.traditional)),b$(bT,d,c,v);if(s===2)return!1;t=d.global,d.type=d.type.toUpperCase(),d.hasContent=!bK.test(d.type),t&&f.active++===0&&f.event.trigger("ajaxStart");if(!d.hasContent){d.data&&(d.url+=(bM.test(d.url)?"&":"?")+d.data,delete d.data),k=d.url;if(d.cache===!1){var x=f.now(),y=d.url.replace(bQ,"$1_="+x);d.url=y+(y===d.url?(bM.test(d.url)?"&":"?")+"_="+x:"")}}(d.data&&d.hasContent&&d.contentType!==!1||c.contentType)&&v.setRequestHeader("Content-Type",d.contentType),d.ifModified&&(k=k||d.url,f.lastModified[k]&&v.setRequestHeader("If-Modified-Since",f.lastModified[k]),f.etag[k]&&v.setRequestHeader("If-None-Match",f.etag[k])),v.setRequestHeader("Accept",d.dataTypes[0]&&d.accepts[d.dataTypes[0]]?d.accepts[d.dataTypes[0]]+(d.dataTypes[0]!=="*"?", "+bX+"; q=0.01":""):d.accepts["*"]);for(u in d.headers)v.setRequestHeader(u,d.headers[u]);if(d.beforeSend&&(d.beforeSend.call(e,v,d)===!1||s===2)){v.abort();return!1}for(u in{success:1,error:1,complete:1})v[u](d[u]);p=b$(bU,d,c,v);if(!p)w(-1,"No Transport");else{v.readyState=1,t&&g.trigger("ajaxSend",[v,d]),d.async&&d.timeout>0&&(q=setTimeout(function(){v.abort("timeout")},d.timeout));try{s=1,p.send(l,w)}catch(z){if(s<2)w(-1,z);else throw z}}return v},param:function(a,c){var d=[],e=function(a,b){b=f.isFunction(b)?b():b,d[d.length]=encodeURIComponent(a)+"="+encodeURIComponent(b)};c===b&&(c=f.ajaxSettings.traditional);if(f.isArray(a)||a.jquery&&!f.isPlainObject(a))f.each(a,function(){e(this.name,this.value)});else for(var g in a)ca(g,a[g],c,e);return d.join("&").replace(bD,"+")}}),f.extend({active:0,lastModified:{},etag:{}});var cd=f.now(),ce=/(\=)\?(&|$)|\?\?/i;f.ajaxSetup({jsonp:"callback",jsonpCallback:function(){return f.expando+"_"+cd++}}),f.ajaxPrefilter("json jsonp",function(b,c,d){var e=b.contentType==="application/x-www-form-urlencoded"&&typeof b.data=="string";if(b.dataTypes[0]==="jsonp"||b.jsonp!==!1&&(ce.test(b.url)||e&&ce.test(b.data))){var g,h=b.jsonpCallback=f.isFunction(b.jsonpCallback)?b.jsonpCallback():b.jsonpCallback,i=a[h],j=b.url,k=b.data,l="$1"+h+"$2";b.jsonp!==!1&&(j=j.replace(ce,l),b.url===j&&(e&&(k=k.replace(ce,l)),b.data===k&&(j+=(/\?/.test(j)?"&":"?")+b.jsonp+"="+h))),b.url=j,b.data=k,a[h]=function(a){g=[a]},d.always(function(){a[h]=i,g&&f.isFunction(i)&&a[h](g[0])}),b.converters["script json"]=function(){g||f.error(h+" was not called");return g[0]},b.dataTypes[0]="json";return"script"}}),f.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/javascript|ecmascript/},converters:{"text script":function(a){f.globalEval(a);return a}}}),f.ajaxPrefilter("script",function(a){a.cache===b&&(a.cache=!1),a.crossDomain&&(a.type="GET",a.global=!1)}),f.ajaxTransport("script",function(a){if(a.crossDomain){var d,e=c.head||c.getElementsByTagName("head")[0]||c.documentElement;return{send:function(f,g){d=c.createElement("script"),d.async="async",a.scriptCharset&&(d.charset=a.scriptCharset),d.src=a.url,d.onload=d.onreadystatechange=function(a,c){if(c||!d.readyState||/loaded|complete/.test(d.readyState))d.onload=d.onreadystatechange=null,e&&d.parentNode&&e.removeChild(d),d=b,c||g(200,"success")},e.insertBefore(d,e.firstChild)},abort:function(){d&&d.onload(0,1)}}}});var cf=a.ActiveXObject?function(){for(var a in ch)ch[a](0,1)}:!1,cg=0,ch;f.ajaxSettings.xhr=a.ActiveXObject?function(){return!this.isLocal&&ci()||cj()}:ci,function(a){f.extend(f.support,{ajax:!!a,cors:!!a&&"withCredentials"in a})}(f.ajaxSettings.xhr()),f.support.ajax&&f.ajaxTransport(function(c){if(!c.crossDomain||f.support.cors){var d;return{send:function(e,g){var h=c.xhr(),i,j;c.username?h.open(c.type,c.url,c.async,c.username,c.password):h.open(c.type,c.url,c.async);if(c.xhrFields)for(j in c.xhrFields)h[j]=c.xhrFields[j];c.mimeType&&h.overrideMimeType&&h.overrideMimeType(c.mimeType),!c.crossDomain&&!e["X-Requested-With"]&&(e["X-Requested-With"]="XMLHttpRequest");try{for(j in e)h.setRequestHeader(j,e[j])}catch(k){}h.send(c.hasContent&&c.data||null),d=function(a,e){var j,k,l,m,n;try{if(d&&(e||h.readyState===4)){d=b,i&&(h.onreadystatechange=f.noop,cf&&delete ch[i]);if(e)h.readyState!==4&&h.abort();else{j=h.status,l=h.getAllResponseHeaders(),m={},n=h.responseXML,n&&n.documentElement&&(m.xml=n),m.text=h.responseText;try{k=h.statusText}catch(o){k=""}!j&&c.isLocal&&!c.crossDomain?j=m.text?200:404:j===1223&&(j=204)}}}catch(p){e||g(-1,p)}m&&g(j,k,m,l)},!c.async||h.readyState===4?d():(i=++cg,cf&&(ch||(ch={},f(a).unload(cf)),ch[i]=d),h.onreadystatechange=d)},abort:function(){d&&d(0,1)}}}});var ck={},cl,cm,cn=/^(?:toggle|show|hide)$/,co=/^([+\-]=)?([\d+.\-]+)([a-z%]*)$/i,cp,cq=[["height","marginTop","marginBottom","paddingTop","paddingBottom"],["width","marginLeft","marginRight","paddingLeft","paddingRight"],["opacity"]],cr;f.fn.extend({show:function(a,b,c){var d,e;if(a||a===0)return this.animate(cu("show",3),a,b,c);for(var g=0,h=this.length;g<h;g++)d=this[g],d.style&&(e=d.style.display,!f._data(d,"olddisplay")&&e==="none"&&(e=d.style.display=""),e===""&&f.css(d,"display")==="none"&&f._data(d,"olddisplay",cv(d.nodeName)));for(g=0;g<h;g++){d=this[g];if(d.style){e=d.style.display;if(e===""||e==="none")d.style.display=f._data(d,"olddisplay")||""}}return this},hide:function(a,b,c){if(a||a===0)return this.animate(cu("hide",3),a,b,c);var d,e,g=0,h=this.length;for(;g<h;g++)d=this[g],d.style&&(e=f.css(d,"display"),e!=="none"&&!f._data(d,"olddisplay")&&f._data(d,"olddisplay",e));for(g=0;g<h;g++)this[g].style&&(this[g].style.display="none");return this},_toggle:f.fn.toggle,toggle:function(a,b,c){var d=typeof a=="boolean";f.isFunction(a)&&f.isFunction(b)?this._toggle.apply(this,arguments):a==null||d?this.each(function(){var b=d?a:f(this).is(":hidden");f(this)[b?"show":"hide"]()}):this.animate(cu("toggle",3),a,b,c);return this},fadeTo:function(a,b,c,d){return this.filter(":hidden").css("opacity",0).show().end().animate({opacity:b},a,c,d)},animate:function(a,b,c,d){function g(){e.queue===!1&&f._mark(this);var b=f.extend({},e),c=this.nodeType===1,d=c&&f(this).is(":hidden"),g,h,i,j,k,l,m,n,o;b.animatedProperties={};for(i in a){g=f.camelCase(i),i!==g&&(a[g]=a[i],delete a[i]),h=a[g],f.isArray(h)?(b.animatedProperties[g]=h[1],h=a[g]=h[0]):b.animatedProperties[g]=b.specialEasing&&b.specialEasing[g]||b.easing||"swing";if(h==="hide"&&d||h==="show"&&!d)return b.complete.call(this);c&&(g==="height"||g==="width")&&(b.overflow=[this.style.overflow,this.style.overflowX,this.style.overflowY],f.css(this,"display")==="inline"&&f.css(this,"float")==="none"&&(!f.support.inlineBlockNeedsLayout||cv(this.nodeName)==="inline"?this.style.display="inline-block":this.style.zoom=1))}b.overflow!=null&&(this.style.overflow="hidden");for(i in a)j=new f.fx(this,b,i),h=a[i],cn.test(h)?(o=f._data(this,"toggle"+i)||(h==="toggle"?d?"show":"hide":0),o?(f._data(this,"toggle"+i,o==="show"?"hide":"show"),j[o]()):j[h]()):(k=co.exec(h),l=j.cur(),k?(m=parseFloat(k[2]),n=k[3]||(f.cssNumber[i]?"":"px"),n!=="px"&&(f.style(this,i,(m||1)+n),l=(m||1)/j.cur()*l,f.style(this,i,l+n)),k[1]&&(m=(k[1]==="-="?-1:1)*m+l),j.custom(l,m,n)):j.custom(l,h,""));return!0}var e=f.speed(b,c,d);if(f.isEmptyObject(a))return this.each(e.complete,[!1]);a=f.extend({},a);return e.queue===!1?this.each(g):this.queue(e.queue,g)},stop:function(a,c,d){typeof a!="string"&&(d=c,c=a,a=b),c&&a!==!1&&this.queue(a||"fx",[]);return this.each(function(){function h(a,b,c){var e=b[c];f.removeData(a,c,!0),e.stop(d)}var b,c=!1,e=f.timers,g=f._data(this);d||f._unmark(!0,this);if(a==null)for(b in g)g[b]&&g[b].stop&&b.indexOf(".run")===b.length-4&&h(this,g,b);else g[b=a+".run"]&&g[b].stop&&h(this,g,b);for(b=e.length;b--;)e[b].elem===this&&(a==null||e[b].queue===a)&&(d?e[b](!0):e[b].saveState(),c=!0,e.splice(b,1));(!d||!c)&&f.dequeue(this,a)})}}),f.each({slideDown:cu("show",1),slideUp:cu("hide",1),slideToggle:cu("toggle",1),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(a,b){f.fn[a]=function(a,c,d){return this.animate(b,a,c,d)}}),f.extend({speed:function(a,b,c){var d=a&&typeof a=="object"?f.extend({},a):{complete:c||!c&&b||f.isFunction(a)&&a,duration:a,easing:c&&b||b&&!f.isFunction(b)&&b};d.duration=f.fx.off?0:typeof d.duration=="number"?d.duration:d.duration in f.fx.speeds?f.fx.speeds[d.duration]:f.fx.speeds._default;if(d.queue==null||d.queue===!0)d.queue="fx";d.old=d.complete,d.complete=function(a){f.isFunction(d.old)&&d.old.call(this),d.queue?f.dequeue(this,d.queue):a!==!1&&f._unmark(this)};return d},easing:{linear:function(a,b,c,d){return c+d*a},swing:function(a,b,c,d){return(-Math.cos(a*Math.PI)/2+.5)*d+c}},timers:[],fx:function(a,b,c){this.options=b,this.elem=a,this.prop=c,b.orig=b.orig||{}}}),f.fx.prototype={update:function(){this.options.step&&this.options.step.call(this.elem,this.now,this),(f.fx.step[this.prop]||f.fx.step._default)(this)},cur:function(){if(this.elem[this.prop]!=null&&(!this.elem.style||this.elem.style[this.prop]==null))return this.elem[this.prop];var a,b=f.css(this.elem,this.prop);return isNaN(a=parseFloat(b))?!b||b==="auto"?0:b:a},custom:function(a,c,d){function h(a){return e.step(a)}var e=this,g=f.fx;this.startTime=cr||cs(),this.end=c,this.now=this.start=a,this.pos=this.state=0,this.unit=d||this.unit||(f.cssNumber[this.prop]?"":"px"),h.queue=this.options.queue,h.elem=this.elem,h.saveState=function(){e.options.hide&&f._data(e.elem,"fxshow"+e.prop)===b&&f._data(e.elem,"fxshow"+e.prop,e.start)},h()&&f.timers.push(h)&&!cp&&(cp=setInterval(g.tick,g.interval))},show:function(){var a=f._data(this.elem,"fxshow"+this.prop);this.options.orig[this.prop]=a||f.style(this.elem,this.prop),this.options.show=!0,a!==b?this.custom(this.cur(),a):this.custom(this.prop==="width"||this.prop==="height"?1:0,this.cur()),f(this.elem).show()},hide:function(){this.options.orig[this.prop]=f._data(this.elem,"fxshow"+this.prop)||f.style(this.elem,this.prop),this.options.hide=!0,this.custom(this.cur(),0)},step:function(a){var b,c,d,e=cr||cs(),g=!0,h=this.elem,i=this.options;if(a||e>=i.duration+this.startTime){this.now=this.end,this.pos=this.state=1,this.update(),i.animatedProperties[this.prop]=!0;for(b in i.animatedProperties)i.animatedProperties[b]!==!0&&(g=!1);if(g){i.overflow!=null&&!f.support.shrinkWrapBlocks&&f.each(["","X","Y"],function(a,b){h.style["overflow"+b]=i.overflow[a]}),i.hide&&f(h).hide();if(i.hide||i.show)for(b in i.animatedProperties)f.style(h,b,i.orig[b]),f.removeData(h,"fxshow"+b,!0),f.removeData(h,"toggle"+b,!0);d=i.complete,d&&(i.complete=!1,d.call(h))}return!1}i.duration==Infinity?this.now=e:(c=e-this.startTime,this.state=c/i.duration,this.pos=f.easing[i.animatedProperties[this.prop]](this.state,c,0,1,i.duration),this.now=this.start+(this.end-this.start)*this.pos),this.update();return!0}},f.extend(f.fx,{tick:function(){var a,b=f.timers,c=0;for(;c<b.length;c++)a=b[c],!a()&&b[c]===a&&b.splice(c--,1);b.length||f.fx.stop()},interval:13,stop:function(){clearInterval(cp),cp=null},speeds:{slow:600,fast:200,_default:400},step:{opacity:function(a){f.style(a.elem,"opacity",a.now)},_default:function(a){a.elem.style&&a.elem.style[a.prop]!=null?a.elem.style[a.prop]=a.now+a.unit:a.elem[a.prop]=a.now}}}),f.each(["width","height"],function(a,b){f.fx.step[b]=function(a){f.style(a.elem,b,Math.max(0,a.now)+a.unit)}}),f.expr&&f.expr.filters&&(f.expr.filters.animated=function(a){return f.grep(f.timers,function(b){return a===b.elem}).length});var cw=/^t(?:able|d|h)$/i,cx=/^(?:body|html)$/i;"getBoundingClientRect"in c.documentElement?f.fn.offset=function(a){var b=this[0],c;if(a)return this.each(function(b){f.offset.setOffset(this,a,b)});if(!b||!b.ownerDocument)return null;if(b===b.ownerDocument.body)return f.offset.bodyOffset(b);try{c=b.getBoundingClientRect()}catch(d){}var e=b.ownerDocument,g=e.documentElement;if(!c||!f.contains(g,b))return c?{top:c.top,left:c.left}:{top:0,left:0};var h=e.body,i=cy(e),j=g.clientTop||h.clientTop||0,k=g.clientLeft||h.clientLeft||0,l=i.pageYOffset||f.support.boxModel&&g.scrollTop||h.scrollTop,m=i.pageXOffset||f.support.boxModel&&g.scrollLeft||h.scrollLeft,n=c.top+l-j,o=c.left+m-k;return{top:n,left:o}}:f.fn.offset=function(a){var b=this[0];if(a)return this.each(function(b){f.offset.setOffset(this,a,b)});if(!b||!b.ownerDocument)return null;if(b===b.ownerDocument.body)return f.offset.bodyOffset(b);var c,d=b.offsetParent,e=b,g=b.ownerDocument,h=g.documentElement,i=g.body,j=g.defaultView,k=j?j.getComputedStyle(b,null):b.currentStyle,l=b.offsetTop,m=b.offsetLeft;while((b=b.parentNode)&&b!==i&&b!==h){if(f.support.fixedPosition&&k.position==="fixed")break;c=j?j.getComputedStyle(b,null):b.currentStyle,l-=b.scrollTop,m-=b.scrollLeft,b===d&&(l+=b.offsetTop,m+=b.offsetLeft,f.support.doesNotAddBorder&&(!f.support.doesAddBorderForTableAndCells||!cw.test(b.nodeName))&&(l+=parseFloat(c.borderTopWidth)||0,m+=parseFloat(c.borderLeftWidth)||0),e=d,d=b.offsetParent),f.support.subtractsBorderForOverflowNotVisible&&c.overflow!=="visible"&&(l+=parseFloat(c.borderTopWidth)||0,m+=parseFloat(c.borderLeftWidth)||0),k=c}if(k.position==="relative"||k.position==="static")l+=i.offsetTop,m+=i.offsetLeft;f.support.fixedPosition&&k.position==="fixed"&&(l+=Math.max(h.scrollTop,i.scrollTop),m+=Math.max(h.scrollLeft,i.scrollLeft));return{top:l,left:m}},f.offset={bodyOffset:function(a){var b=a.offsetTop,c=a.offsetLeft;f.support.doesNotIncludeMarginInBodyOffset&&(b+=parseFloat(f.css(a,"marginTop"))||0,c+=parseFloat(f.css(a,"marginLeft"))||0);return{top:b,left:c}},setOffset:function(a,b,c){var d=f.css(a,"position");d==="static"&&(a.style.position="relative");var e=f(a),g=e.offset(),h=f.css(a,"top"),i=f.css(a,"left"),j=(d==="absolute"||d==="fixed")&&f.inArray("auto",[h,i])>-1,k={},l={},m,n;j?(l=e.position(),m=l.top,n=l.left):(m=parseFloat(h)||0,n=parseFloat(i)||0),f.isFunction(b)&&(b=b.call(a,c,g)),b.top!=null&&(k.top=b.top-g.top+m),b.left!=null&&(k.left=b.left-g.left+n),"using"in b?b.using.call(a,k):e.css(k)}},f.fn.extend({position:function(){if(!this[0])return null;var a=this[0],b=this.offsetParent(),c=this.offset(),d=cx.test(b[0].nodeName)?{top:0,left:0}:b.offset();c.top-=parseFloat(f.css(a,"marginTop"))||0,c.left-=parseFloat(f.css(a,"marginLeft"))||0,d.top+=parseFloat(f.css(b[0],"borderTopWidth"))||0,d.left+=parseFloat(f.css(b[0],"borderLeftWidth"))||0;return{top:c.top-d.top,left:c.left-d.left}},offsetParent:function(){return this.map(function(){var a=this.offsetParent||c.body;while(a&&!cx.test(a.nodeName)&&f.css(a,"position")==="static")a=a.offsetParent;return a})}}),f.each(["Left","Top"],function(a,c){var d="scroll"+c;f.fn[d]=function(c){var e,g;if(c===b){e=this[0];if(!e)return null;g=cy(e);return g?"pageXOffset"in g?g[a?"pageYOffset":"pageXOffset"]:f.support.boxModel&&g.document.documentElement[d]||g.document.body[d]:e[d]}return this.each(function(){g=cy(this),g?g.scrollTo(a?f(g).scrollLeft():c,a?c:f(g).scrollTop()):this[d]=c})}}),f.each(["Height","Width"],function(a,c){var d=c.toLowerCase();f.fn["inner"+c]=function(){var a=this[0];return a?a.style?parseFloat(f.css(a,d,"padding")):this[d]():null},f.fn["outer"+c]=function(a){var b=this[0];return b?b.style?parseFloat(f.css(b,d,a?"margin":"border")):this[d]():null},f.fn[d]=function(a){var e=this[0];if(!e)return a==null?null:this;if(f.isFunction(a))return this.each(function(b){var c=f(this);c[d](a.call(this,b,c[d]()))});if(f.isWindow(e)){var g=e.document.documentElement["client"+c],h=e.document.body;return e.document.compatMode==="CSS1Compat"&&g||h&&h["client"+c]||g}if(e.nodeType===9)return Math.max(e.documentElement["client"+c],e.body["scroll"+c],e.documentElement["scroll"+c],e.body["offset"+c],e.documentElement["offset"+c]);if(a===b){var i=f.css(e,d),j=parseFloat(i);return f.isNumeric(j)?j:i}return this.css(d,typeof a=="string"?a:a+"px")}}),a.jQuery=a.$=f,typeof define=="function"&&define.amd&&define.amd.jQuery&&define("jquery",[],function(){return f})})(window);
;(function($) {




$.fn.ajaxSubmit = function(options) {
	// fast fail if nothing selected (http://dev.jquery.com/ticket/2752)
	if (!this.length) {
		log('ajaxSubmit: skipping submit process - no element selected');
		return this;
	}
	
	var method, action, url, $form = this;

	if (typeof options == 'function') {
		options = { success: options };
	}

	method = this.attr('method');
	action = this.attr('action');
	url = (typeof action === 'string') ? $.trim(action) : '';
	url = url || window.location.href || '';
	if (url) {
		// clean url (don't include hash vaue)
		url = (url.match(/^([^#]+)/)||[])[1];
	}

	options = $.extend(true, {
		url:  url,
		success: $.ajaxSettings.success,
		type: method || 'GET',
		iframeSrc: /^https/i.test(window.location.href || '') ? 'javascript:false' : 'about:blank'
	}, options);

	// hook for manipulating the form data before it is extracted;
	// convenient for use with rich editors like tinyMCE or FCKEditor
	var veto = {};
	this.trigger('form-pre-serialize', [this, options, veto]);
	if (veto.veto) {
		log('ajaxSubmit: submit vetoed via form-pre-serialize trigger');
		return this;
	}

	// provide opportunity to alter form data before it is serialized
	if (options.beforeSerialize && options.beforeSerialize(this, options) === false) {
		log('ajaxSubmit: submit aborted via beforeSerialize callback');
		return this;
	}

	var traditional = options.traditional;
	if ( traditional === undefined ) {
		traditional = $.ajaxSettings.traditional;
	}
	
	var qx,n,v,a = this.formToArray(options.semantic);
	if (options.data) {
		options.extraData = options.data;
		qx = $.param(options.data, traditional);
	}

	// give pre-submit callback an opportunity to abort the submit
	if (options.beforeSubmit && options.beforeSubmit(a, this, options) === false) {
		log('ajaxSubmit: submit aborted via beforeSubmit callback');
		return this;
	}

	// fire vetoable 'validate' event
	this.trigger('form-submit-validate', [a, this, options, veto]);
	if (veto.veto) {
		log('ajaxSubmit: submit vetoed via form-submit-validate trigger');
		return this;
	}

	var q = $.param(a, traditional);
	if (qx) {
		q = ( q ? (q + '&' + qx) : qx );
	}	
	if (options.type.toUpperCase() == 'GET') {
		options.url += (options.url.indexOf('?') >= 0 ? '&' : '?') + q;
		options.data = null;  // data is null for 'get'
	}
	else {
		options.data = q; // data is the query string for 'post'
	}

	var callbacks = [];
	if (options.resetForm) {
		callbacks.push(function() { $form.resetForm(); });
	}
	if (options.clearForm) {
		callbacks.push(function() { $form.clearForm(options.includeHidden); });
	}

	// perform a load on the target only if dataType is not provided
	if (!options.dataType && options.target) {
		var oldSuccess = options.success || function(){};
		callbacks.push(function(data) {
			var fn = options.replaceTarget ? 'replaceWith' : 'html';
			$(options.target)[fn](data).each(oldSuccess, arguments);
		});
	}
	else if (options.success) {
		callbacks.push(options.success);
	}

	options.success = function(data, status, xhr) { // jQuery 1.4+ passes xhr as 3rd arg
		var context = options.context || options;	// jQuery 1.4+ supports scope context 
		for (var i=0, max=callbacks.length; i < max; i++) {
			callbacks[i].apply(context, [data, status, xhr || $form, $form]);
		}
	};

	// are there files to upload?
	var fileInputs = $('input:file:enabled[value]', this); // [value] (issue #113)
	var hasFileInputs = fileInputs.length > 0;
	var mp = 'multipart/form-data';
	var multipart = ($form.attr('enctype') == mp || $form.attr('encoding') == mp);

	var fileAPI = !!(hasFileInputs && fileInputs.get(0).files && window.FormData);
	log("fileAPI :" + fileAPI);
	var shouldUseFrame = (hasFileInputs || multipart) && !fileAPI;

	// options.iframe allows user to force iframe mode
	// 06-NOV-09: now defaulting to iframe mode if file input is detected
	if (options.iframe !== false && (options.iframe || shouldUseFrame)) {
		// hack to fix Safari hang (thanks to Tim Molendijk for this)
		// see:  http://groups.google.com/group/jquery-dev/browse_thread/thread/36395b7ab510dd5d
		if (options.closeKeepAlive) {
			$.get(options.closeKeepAlive, function() {
				fileUploadIframe(a);
			});
		}
  		else {
			fileUploadIframe(a);
  		}
	}
	else if ((hasFileInputs || multipart) && fileAPI) {
		options.progress = options.progress || $.noop;
		fileUploadXhr(a);
	}
	else {
		$.ajax(options);
	}

	 // fire 'notify' event
	 this.trigger('form-submit-notify', [this, options]);
	 return this;

	 // XMLHttpRequest Level 2 file uploads (big hat tip to francois2metz)
	function fileUploadXhr(a) {
		var formdata = new FormData();

		for (var i=0; i < a.length; i++) {
			if (a[i].type == 'file')
				continue;
			formdata.append(a[i].name, a[i].value);
		}

		$form.find('input:file:enabled').each(function(){
			var name = $(this).attr('name'), files = this.files;
			if (name) {
				for (var i=0; i < files.length; i++)
					formdata.append(name, files[i]);
			}
		});

		if (options.extraData) {
			for (var k in options.extraData)
				formdata.append(k, options.extraData[k])
		}

		options.data = null;

		var s = $.extend(true, {}, $.ajaxSettings, options, {
			contentType: false,
			processData: false,
			cache: false,
			type: 'POST'
		});

      //s.context = s.context || s;

      s.data = null;
      var beforeSend = s.beforeSend;
      s.beforeSend = function(xhr, o) {
          o.data = formdata;
          if(xhr.upload) { // unfortunately, jQuery doesn't expose this prop (http://bugs.jquery.com/ticket/10190)
              xhr.upload.onprogress = function(event) {
                  o.progress(event.position, event.total);
              };
          }
          if(beforeSend)
              beforeSend.call(o, xhr, options);
      };
      $.ajax(s);
   }

	// private function for handling file uploads (hat tip to YAHOO!)
	function fileUploadIframe(a) {
		var form = $form[0], el, i, s, g, id, $io, io, xhr, sub, n, timedOut, timeoutHandle;
		var useProp = !!$.fn.prop;

		if (a) {
			if ( useProp ) {
				// ensure that every serialized input is still enabled
				for (i=0; i < a.length; i++) {
					el = $(form[a[i].name]);
					el.prop('disabled', false);
				}
			} else {
				for (i=0; i < a.length; i++) {
					el = $(form[a[i].name]);
					el.removeAttr('disabled');
				}
			};
		}

		if ($(':input[name=submit],:input[id=submit]', form).length) {
			// if there is an input with a name or id of 'submit' then we won't be
			// able to invoke the submit fn on the form (at least not x-browser)
			alert('Error: Form elements must not have name or id of "submit".');
			return;
		}
		
		s = $.extend(true, {}, $.ajaxSettings, options);
		s.context = s.context || s;
		id = 'jqFormIO' + (new Date().getTime());
		if (s.iframeTarget) {
			$io = $(s.iframeTarget);
			n = $io.attr('name');
			if (n == null)
			 	$io.attr('name', id);
			else
				id = n;
		}
		else {
			$io = $('<iframe name="' + id + '" src="'+ s.iframeSrc +'" />');
			$io.css({ position: 'absolute', top: '-1000px', left: '-1000px' });
		}
		io = $io[0];


		xhr = { // mock object
			aborted: 0,
			responseText: null,
			responseXML: null,
			status: 0,
			statusText: 'n/a',
			getAllResponseHeaders: function() {},
			getResponseHeader: function() {},
			setRequestHeader: function() {},
			abort: function(status) {
				var e = (status === 'timeout' ? 'timeout' : 'aborted');
				log('aborting upload... ' + e);
				this.aborted = 1;
				$io.attr('src', s.iframeSrc); // abort op in progress
				xhr.error = e;
				s.error && s.error.call(s.context, xhr, e, status);
				g && $.event.trigger("ajaxError", [xhr, s, e]);
				s.complete && s.complete.call(s.context, xhr, e);
			}
		};

		g = s.global;
		// trigger ajax global events so that activity/block indicators work like normal
		if (g && ! $.active++) {
			$.event.trigger("ajaxStart");
		}
		if (g) {
			$.event.trigger("ajaxSend", [xhr, s]);
		}

		if (s.beforeSend && s.beforeSend.call(s.context, xhr, s) === false) {
			if (s.global) {
				$.active--;
			}
			return;
		}
		if (xhr.aborted) {
			return;
		}

		// add submitting element to data if we know it
		sub = form.clk;
		if (sub) {
			n = sub.name;
			if (n && !sub.disabled) {
				s.extraData = s.extraData || {};
				s.extraData[n] = sub.value;
				if (sub.type == "image") {
					s.extraData[n+'.x'] = form.clk_x;
					s.extraData[n+'.y'] = form.clk_y;
				}
			}
		}
		
		var CLIENT_TIMEOUT_ABORT = 1;
		var SERVER_ABORT = 2;

		function getDoc(frame) {
			var doc = frame.contentWindow ? frame.contentWindow.document : frame.contentDocument ? frame.contentDocument : frame.document;
			return doc;
		}
		
		// Rails CSRF hack (thanks to Yvan Barthelemy)
		var csrf_token = $('meta[name=csrf-token]').attr('content');
		var csrf_param = $('meta[name=csrf-param]').attr('content');
		if (csrf_param && csrf_token) {
			s.extraData = s.extraData || {};
			s.extraData[csrf_param] = csrf_token;
		}

		// take a breath so that pending repaints get some cpu time before the upload starts
		function doSubmit() {
			// make sure form attrs are set
			var t = $form.attr('target'), a = $form.attr('action');

			// update form attrs in IE friendly way
			form.setAttribute('target',id);
			if (!method) {
				form.setAttribute('method', 'POST');
			}
			if (a != s.url) {
				form.setAttribute('action', s.url);
			}

			// ie borks in some cases when setting encoding
			if (! s.skipEncodingOverride && (!method || /post/i.test(method))) {
				$form.attr({
					encoding: 'multipart/form-data',
					enctype:  'multipart/form-data'
				});
			}

			// support timout
			if (s.timeout) {
				timeoutHandle = setTimeout(function() { timedOut = true; cb(CLIENT_TIMEOUT_ABORT); }, s.timeout);
			}
			
			// look for server aborts
			function checkState() {
				try {
					var state = getDoc(io).readyState;
					log('state = ' + state);
					if (state.toLowerCase() == 'uninitialized')
						setTimeout(checkState,50);
				}
				catch(e) {
					log('Server abort: ' , e, ' (', e.name, ')');
					cb(SERVER_ABORT);
					timeoutHandle && clearTimeout(timeoutHandle);
					timeoutHandle = undefined;
				}
			}

			// add "extra" data to form if provided in options
			var extraInputs = [];
			try {
				if (s.extraData) {
					for (var n in s.extraData) {
						extraInputs.push(
							$('<input type="hidden" name="'+n+'">').attr('value',s.extraData[n])
								.appendTo(form)[0]);
					}
				}

				if (!s.iframeTarget) {
					// add iframe to doc and submit the form
					$io.appendTo('body');
					io.attachEvent ? io.attachEvent('onload', cb) : io.addEventListener('load', cb, false);
				}
				setTimeout(checkState,15);
				form.submit();
			}
			finally {
				// reset attrs and remove "extra" input elements
				form.setAttribute('action',a);
				if(t) {
					form.setAttribute('target', t);
				} else {
					$form.removeAttr('target');
				}
				$(extraInputs).remove();
			}
		}

		if (s.forceSync) {
			doSubmit();
		}
		else {
			setTimeout(doSubmit, 10); // this lets dom updates render
		}

		var data, doc, domCheckCount = 50, callbackProcessed;

		function cb(e) {
			if (xhr.aborted || callbackProcessed) {
				return;
			}
			try {
				doc = getDoc(io);
			}
			catch(ex) {
				log('cannot access response document: ', ex);
				e = SERVER_ABORT;
			}
			if (e === CLIENT_TIMEOUT_ABORT && xhr) {
				xhr.abort('timeout');
				return;
			}
			else if (e == SERVER_ABORT && xhr) {
				xhr.abort('server abort');
				return;
			}

			if (!doc || doc.location.href == s.iframeSrc) {
				// response not received yet
				if (!timedOut)
					return;
			}
			io.detachEvent ? io.detachEvent('onload', cb) : io.removeEventListener('load', cb, false);

			var status = 'success', errMsg;
			try {
				if (timedOut) {
					throw 'timeout';
				}

				var isXml = s.dataType == 'xml' || doc.XMLDocument || $.isXMLDoc(doc);
				log('isXml='+isXml);
				if (!isXml && window.opera && (doc.body == null || doc.body.innerHTML == '')) {
					if (--domCheckCount) {
						// in some browsers (Opera) the iframe DOM is not always traversable when
						// the onload callback fires, so we loop a bit to accommodate
						log('requeing onLoad callback, DOM not available');
						setTimeout(cb, 250);
						return;
					}
					// let this fall through because server response could be an empty document
					//log('Could not access iframe DOM after mutiple tries.');
					//throw 'DOMException: not available';
				}

				//log('response detected');
				var docRoot = doc.body ? doc.body : doc.documentElement;
				xhr.responseText = docRoot ? docRoot.innerHTML : null;
				xhr.responseXML = doc.XMLDocument ? doc.XMLDocument : doc;
				if (isXml)
					s.dataType = 'xml';
				xhr.getResponseHeader = function(header){
					var headers = {'content-type': s.dataType};
					return headers[header];
				};
				// support for XHR 'status' & 'statusText' emulation :
				if (docRoot) {
					xhr.status = Number( docRoot.getAttribute('status') ) || xhr.status;
					xhr.statusText = docRoot.getAttribute('statusText') || xhr.statusText;
				}

				var dt = (s.dataType || '').toLowerCase();
				var scr = /(json|script|text)/.test(dt);
				if (scr || s.textarea) {
					// see if user embedded response in textarea
					var ta = doc.getElementsByTagName('textarea')[0];
					if (ta) {
						xhr.responseText = ta.value;
						// support for XHR 'status' & 'statusText' emulation :
						xhr.status = Number( ta.getAttribute('status') ) || xhr.status;
						xhr.statusText = ta.getAttribute('statusText') || xhr.statusText;
					}
					else if (scr) {
						// account for browsers injecting pre around json response
						var pre = doc.getElementsByTagName('pre')[0];
						var b = doc.getElementsByTagName('body')[0];
						if (pre) {
							xhr.responseText = pre.textContent ? pre.textContent : pre.innerText;
						}
						else if (b) {
							xhr.responseText = b.textContent ? b.textContent : b.innerText;
						}
					}
				}
				else if (dt == 'xml' && !xhr.responseXML && xhr.responseText != null) {
					xhr.responseXML = toXml(xhr.responseText);
				}

				try {
					data = httpData(xhr, dt, s);
				}
				catch (e) {
					status = 'parsererror';
					xhr.error = errMsg = (e || status);
				}
			}
			catch (e) {
				log('error caught: ',e);
				status = 'error';
				xhr.error = errMsg = (e || status);
			}

			if (xhr.aborted) {
				log('upload aborted');
				status = null;
			}

			if (xhr.status) { // we've set xhr.status
				status = (xhr.status >= 200 && xhr.status < 300 || xhr.status === 304) ? 'success' : 'error';
			}

			// ordering of these callbacks/triggers is odd, but that's how $.ajax does it
			if (status === 'success') {
				s.success && s.success.call(s.context, data, 'success', xhr);
				g && $.event.trigger("ajaxSuccess", [xhr, s]);
			}
			else if (status) {
				if (errMsg == undefined)
					errMsg = xhr.statusText;
				s.error && s.error.call(s.context, xhr, status, errMsg);
				g && $.event.trigger("ajaxError", [xhr, s, errMsg]);
			}

			g && $.event.trigger("ajaxComplete", [xhr, s]);

			if (g && ! --$.active) {
				$.event.trigger("ajaxStop");
			}

			s.complete && s.complete.call(s.context, xhr, status);

			callbackProcessed = true;
			if (s.timeout)
				clearTimeout(timeoutHandle);

			// clean up
			setTimeout(function() {
				if (!s.iframeTarget)
					$io.remove();
				xhr.responseXML = null;
			}, 100);
		}

		var toXml = $.parseXML || function(s, doc) { // use parseXML if available (jQuery 1.5+)
			if (window.ActiveXObject) {
				doc = new ActiveXObject('Microsoft.XMLDOM');
				doc.async = 'false';
				doc.loadXML(s);
			}
			else {
				doc = (new DOMParser()).parseFromString(s, 'text/xml');
			}
			return (doc && doc.documentElement && doc.documentElement.nodeName != 'parsererror') ? doc : null;
		};
		var parseJSON = $.parseJSON || function(s) {
			return window['eval']('(' + s + ')');
		};

		var httpData = function( xhr, type, s ) { // mostly lifted from jq1.4.4

			var ct = xhr.getResponseHeader('content-type') || '',
				xml = type === 'xml' || !type && ct.indexOf('xml') >= 0,
				data = xml ? xhr.responseXML : xhr.responseText;

			if (xml && data.documentElement.nodeName === 'parsererror') {
				$.error && $.error('parsererror');
			}
			if (s && s.dataFilter) {
				data = s.dataFilter(data, type);
			}
			if (typeof data === 'string') {
				if (type === 'json' || !type && ct.indexOf('json') >= 0) {
					data = parseJSON(data);
				} else if (type === "script" || !type && ct.indexOf("javascript") >= 0) {
					$.globalEval(data);
				}
			}
			return data;
		};
	}
};


$.fn.ajaxForm = function(options) {
	// in jQuery 1.3+ we can fix mistakes with the ready state
	if (this.length === 0) {
		var o = { s: this.selector, c: this.context };
		if (!$.isReady && o.s) {
			log('DOM not ready, queuing ajaxForm');
			$(function() {
				$(o.s,o.c).ajaxForm(options);
			});
			return this;
		}
		// is your DOM ready?  http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
		log('terminating; zero elements found by selector' + ($.isReady ? '' : ' (DOM not ready)'));
		return this;
	}

	return this.ajaxFormUnbind().bind('submit.form-plugin', function(e) {
		if (!e.isDefaultPrevented()) { // if event has been canceled, don't proceed
			e.preventDefault();
			$(this).ajaxSubmit(options);
		}
	}).bind('click.form-plugin', function(e) {
		var target = e.target;
		var $el = $(target);
		if (!($el.is(":submit,input:image"))) {
			// is this a child element of the submit el?  (ex: a span within a button)
			var t = $el.closest(':submit');
			if (t.length == 0) {
				return;
			}
			target = t[0];
		}
		var form = this;
		form.clk = target;
		if (target.type == 'image') {
			if (e.offsetX != undefined) {
				form.clk_x = e.offsetX;
				form.clk_y = e.offsetY;
			} else if (typeof $.fn.offset == 'function') { // try to use dimensions plugin
				var offset = $el.offset();
				form.clk_x = e.pageX - offset.left;
				form.clk_y = e.pageY - offset.top;
			} else {
				form.clk_x = e.pageX - target.offsetLeft;
				form.clk_y = e.pageY - target.offsetTop;
			}
		}
		// clear form vars
		setTimeout(function() { form.clk = form.clk_x = form.clk_y = null; }, 100);
	});
};

// ajaxFormUnbind unbinds the event handlers that were bound by ajaxForm
$.fn.ajaxFormUnbind = function() {
	return this.unbind('submit.form-plugin click.form-plugin');
};


$.fn.formToArray = function(semantic) {
	var a = [];
	if (this.length === 0) {
		return a;
	}

	var form = this[0];
	var els = semantic ? form.getElementsByTagName('*') : form.elements;
	if (!els) {
		return a;
	}

	var i,j,n,v,el,max,jmax;
	for(i=0, max=els.length; i < max; i++) {
		el = els[i];
		n = el.name;
		if (!n) {
			continue;
		}

		if (semantic && form.clk && el.type == "image") {
			// handle image inputs on the fly when semantic == true
			if(!el.disabled && form.clk == el) {
				a.push({name: n, value: $(el).val(), type: el.type });
				a.push({name: n+'.x', value: form.clk_x}, {name: n+'.y', value: form.clk_y});
			}
			continue;
		}

		v = $.fieldValue(el, true);
		if (v && v.constructor == Array) {
			for(j=0, jmax=v.length; j < jmax; j++) {
				a.push({name: n, value: v[j]});
			}
		}
		else if (v !== null && typeof v != 'undefined') {
			a.push({name: n, value: v, type: el.type});
		}
	}

	if (!semantic && form.clk) {
		// input type=='image' are not found in elements array! handle it here
		var $input = $(form.clk), input = $input[0];
		n = input.name;
		if (n && !input.disabled && input.type == 'image') {
			a.push({name: n, value: $input.val()});
			a.push({name: n+'.x', value: form.clk_x}, {name: n+'.y', value: form.clk_y});
		}
	}
	return a;
};


$.fn.formSerialize = function(semantic) {
	//hand off to jQuery.param for proper encoding
	return $.param(this.formToArray(semantic));
};


$.fn.fieldSerialize = function(successful) {
	var a = [];
	this.each(function() {
		var n = this.name;
		if (!n) {
			return;
		}
		var v = $.fieldValue(this, successful);
		if (v && v.constructor == Array) {
			for (var i=0,max=v.length; i < max; i++) {
				a.push({name: n, value: v[i]});
			}
		}
		else if (v !== null && typeof v != 'undefined') {
			a.push({name: this.name, value: v});
		}
	});
	//hand off to jQuery.param for proper encoding
	return $.param(a);
};


$.fn.fieldValue = function(successful) {
	for (var val=[], i=0, max=this.length; i < max; i++) {
		var el = this[i];
		var v = $.fieldValue(el, successful);
		if (v === null || typeof v == 'undefined' || (v.constructor == Array && !v.length)) {
			continue;
		}
		v.constructor == Array ? $.merge(val, v) : val.push(v);
	}
	return val;
};


$.fieldValue = function(el, successful) {
	var n = el.name, t = el.type, tag = el.tagName.toLowerCase();
	if (successful === undefined) {
		successful = true;
	}

	if (successful && (!n || el.disabled || t == 'reset' || t == 'button' ||
		(t == 'checkbox' || t == 'radio') && !el.checked ||
		(t == 'submit' || t == 'image') && el.form && el.form.clk != el ||
		tag == 'select' && el.selectedIndex == -1)) {
			return null;
	}

	if (tag == 'select') {
		var index = el.selectedIndex;
		if (index < 0) {
			return null;
		}
		var a = [], ops = el.options;
		var one = (t == 'select-one');
		var max = (one ? index+1 : ops.length);
		for(var i=(one ? index : 0); i < max; i++) {
			var op = ops[i];
			if (op.selected) {
				var v = op.value;
				if (!v) { // extra pain for IE...
					v = (op.attributes && op.attributes['value'] && !(op.attributes['value'].specified)) ? op.text : op.value;
				}
				if (one) {
					return v;
				}
				a.push(v);
			}
		}
		return a;
	}
	return $(el).val();
};


$.fn.clearForm = function(includeHidden) {
	return this.each(function() {
		$('input,select,textarea', this).clearFields(includeHidden);
	});
};


$.fn.clearFields = $.fn.clearInputs = function(includeHidden) {
	var re = /^(?:color|date|datetime|email|month|number|password|range|search|tel|text|time|url|week)$/i; // 'hidden' is not in this list
	return this.each(function() {
		var t = this.type, tag = this.tagName.toLowerCase();
		if (re.test(t) || tag == 'textarea' || (includeHidden && /hidden/.test(t)) ) {
			this.value = '';
		}
		else if (t == 'checkbox' || t == 'radio') {
			this.checked = false;
		}
		else if (tag == 'select') {
			this.selectedIndex = -1;
		}
	});
};


$.fn.resetForm = function() {
	return this.each(function() {
		// guard against an input with the name of 'reset'
		// note that IE reports the reset function as an 'object'
		if (typeof this.reset == 'function' || (typeof this.reset == 'object' && !this.reset.nodeType)) {
			this.reset();
		}
	});
};


$.fn.enable = function(b) {
	if (b === undefined) {
		b = true;
	}
	return this.each(function() {
		this.disabled = !b;
	});
};


$.fn.selected = function(select) {
	if (select === undefined) {
		select = true;
	}
	return this.each(function() {
		var t = this.type;
		if (t == 'checkbox' || t == 'radio') {
			this.checked = select;
		}
		else if (this.tagName.toLowerCase() == 'option') {
			var $sel = $(this).parent('select');
			if (select && $sel[0] && $sel[0].type == 'select-one') {
				// deselect all other options
				$sel.find('option').selected(false);
			}
			this.selected = select;
		}
	});
};

// expose debug var
$.fn.ajaxSubmit.debug = false;

// helper fn for console logging
function log() {
	if (!$.fn.ajaxSubmit.debug) 
		return;
	var msg = '[jquery.form] ' + Array.prototype.join.call(arguments,'');
	if (window.console && window.console.log) {
		window.console.log(msg);
	}
	else if (window.opera && window.opera.postError) {
		window.opera.postError(msg);
	}
};

})(jQuery);


// 字符串长度 - 中文和全角符号为1；英文、数字和半角为0.5
var getLength = function(str, shortUrl) {
	if (true == shortUrl) {
		// 一个URL当作十个字长度计算
		return Math.ceil(str.replace(/((news|telnet|nttp|file|http|ftp|https):\/\/){1}(([-A-Za-z0-9]+(\.[-A-Za-z0-9]+)*(\.[-A-Za-z]{2,5}))|([0-9]{1,3}(\.[0-9]{1,3}){3}))(:[0-9]*)?(\/[-A-Za-z0-9_\$\.\+\!\*\(\),;:@&=\?\/~\#\%]*)*/ig, 'xxxxxxxxxxxxxxxxxxxx')
							.replace(/^\s+|\s+$/ig,'').replace(/[^\x00-\xff]/ig,'xx').length/2);
	} else {
		return Math.ceil(str.replace(/^\s+|\s+$/ig,'').replace(/[^\x00-\xff]/ig,'xx').length/2);
	}
};

// 截取字符串
var subStr = function(str, len) {
    if(!str) {
    	return '';
    }
    len = len > 0 ? len * 2 : 280;
    var count = 0;			// 计数：中文2字节，英文1字节
	var temp = '';  		// 临时字符串
    for(var i = 0; i < str.length; i ++) {
    	if(str.charCodeAt(i) > 255) {
        	count += 2;
        } else {
        	count ++;
        }
        // 如果增加计数后长度大于限定长度，就直接返回临时字符串
        if(count > len) {
        	return temp;
        }
        // 将当前内容加到临时字符串
		temp += str.charAt(i);
    }

    return str;
};
// 异步请求页面
var async_page = function(url, target, callback) {
	if(!url) {
		return false;
	} else if(target) {
		var $target = $(target);
		//$target.html('<img src="'+_THEME_+'/images/icon_waiting.gif" width="20" style="margin:10px 50%;" />');
	}
	$.post(url, {}, function(txt) {
		txt = eval("(" + txt + ")");
		if(txt.status) {
			if(target) {
				$target.html(txt.data);
			}
			if(callback) {
				if(callback.match(/[(][^()]*[)]/)) {
					eval(callback);
				} else {
					eval(callback)(txt);
				}
			}
			if(txt.info) {
				ui.success(txt.info);
			}
		} else if(txt.info) {
			ui.error(txt.info);
			return false;
		}
	});

	return true;
};
// 异步加载翻页
var async_turn_page = function(page_number, target) {
	$(page_number).click(function(o) {
		var $a = $(o.target);
		var url = $a.attr("href");
		if(url) {
			async_page(url, target);
		}
		return false;
	});
};

//表单异步处理 

//TODO 优化jquery.form.js的加载机制
var async_form = function(form)
{
	var $form = form ? $(form) : $("form[ajax='ajax']");

	//监听 form 表单提交
	$form.bind('submit', function() {
		var callback = $(this).attr('callback');
		var options = {
		    success: function(txt) {
		    	txt = eval("("+txt+")");
				if(callback){
					if (callback.match(/[(][^()]*[)]/)) {
						eval(callback);
					} else {
						eval(callback)(txt);
					}
				}else{
					if(txt.status && txt.info){
						ui.success( txt.info );
					}else if (txt.info) {
						ui.error( txt.info );
					}						  	 
				}
		    }
		};		
    $(this).ajaxSubmit(options);
		return false;
});
};

// 复制剪贴板
var copy_clip = function (copy){
	if (window.clipboardData) {
		 window.clipboardData.setData("Text", copy);
	 } else if (window.netscape) {
		  try {
			   netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
		  } catch (e) {
			   alert( L('PUBLIC_EXPLORER_ISCTRL') );
			   return false;
		  }
		  var clip = Components.classes['@mozilla.org/widget/clipboard;1'].createInstance(Components.interfaces.nsIClipboard);
		  if (!clip) {
			  return false;
		  }
		  var trans = Components.classes['@mozilla.org/widget/transferable;1'].createInstance(Components.interfaces.nsITransferable);
		  if (!trans) {
			  return false;
		  }
		  trans.addDataFlavor('text/unicode');
		  var str = new Object();
		  var len = new Object();
		  var str = Components.classes["@mozilla.org/supports-string;1"].createInstance(Components.interfaces.nsISupportsString);
		  var copytext = copy;
		  str.data = copytext;
		  trans.setTransferData("text/unicode",str,copytext.length*2);
		  var clipid = Components.interfaces.nsIClipboard;
		  if (!clip) {
			  return false;
		  }
		  clip.setData(trans,null,clipid.kGlobalClipboard);
	 }
	 ui.success( L('PUBLIC_EXPLORER_CTRL') );
	 return true;	 
};
	//是否含有某个样式
	
function hasClass(ele,cls) {
	return $(ele).hasClass(cls);
	//return ele.className.match(new RegExp('(\\s|^)'+cls+'(\\s|$)'));
}
	//添加某个样式
function addClass(ele,cls) {
	$(ele).addClass(cls);
	//if (!this.hasClass(ele,cls)) ele.className += " "+cls;
}
	//移除某个样式
function removeClass(ele,cls) {
	$(ele).removeClass(cls);
	//if (hasClass(ele,cls)) {
	//	var reg = new RegExp('(\\s|^)'+cls+'(\\s|$)');
		//ele.className=ele.className.replace(reg,' ');
	//}
}

var toElement = function(){
	var div = document.createElement('div');
	return function(html){
		div.innerHTML = html;
		var el = div.childNodes[0];
		div.removeChild(el);
		return el;
	}
}();



var implode  = function (glue, pieces) {
    var i = '',
        retVal = '',        tGlue = '';
    if (arguments.length === 1) {
        pieces = glue;
        glue = '';
    }    if (typeof(pieces) === 'object') {
        if (Object.prototype.toString.call(pieces) === '[object Array]') {
            return pieces.join(glue);
        } 
        for (i in pieces) {            retVal += tGlue + pieces[i];
            tGlue = glue;
        }
        return retVal;
    }    return pieces;
};

var explode = function(delimiter, string, limit){
	var emptyArray = {0:''};
 
    if (arguments.length < 2 || typeof arguments[0] == 'undefined' || typeof arguments[1] == 'undefined') {        
    	return null;
    }
 
    if (delimiter === '' || delimiter === false || delimiter === null) {
        return false;    
   }
 
    if (typeof delimiter == 'function' || typeof delimiter == 'object' || typeof string == 'function' || typeof string == 'object') {
        return emptyArray;
    } 
    if (delimiter === true) {
        delimiter = '1';
    }
     if (!limit) {
        return string.toString().split(delimiter.toString());
    }
    // support for limit argument
    var splitted = string.toString().split(delimiter.toString());    var partA = splitted.splice(0, limit - 1);
    var partB = splitted.join(delimiter.toString());
    partA.push(partB);
    return partA;
};

var strlen = function (string) {
    var str = string + '';
    var i = 0,        chr = '',
        lgth = 0;
 
    if (!this.php_js || !this.php_js.ini || !this.php_js.ini['unicode.semantics'] || this.php_js.ini['unicode.semantics'].local_value.toLowerCase() !== 'on') {
        return string.length;    }
 
    var getWholeChar = function (str, i) {
        var code = str.charCodeAt(i);
        var next = '',            prev = '';
        if (0xD800 <= code && code <= 0xDBFF) { // High surrogate (could change last hex to 0xDB7F to treat high private surrogates as single characters)
            if (str.length <= (i + 1)) {
                throw 'High surrogate without following low surrogate';
            }            next = str.charCodeAt(i + 1);
            if (0xDC00 > next || next > 0xDFFF) {
                throw 'High surrogate without following low surrogate';
            }
            return str.charAt(i) + str.charAt(i + 1);        } else if (0xDC00 <= code && code <= 0xDFFF) { // Low surrogate
            if (i === 0) {
                throw 'Low surrogate without preceding high surrogate';
            }
            prev = str.charCodeAt(i - 1);            if (0xD800 > prev || prev > 0xDBFF) { //(could change last hex to 0xDB7F to treat high private surrogates as single characters)
                throw 'Low surrogate without preceding high surrogate';
            }
            return false; // We can pass over low surrogates now as the second component in a pair which we have already processed
        }        return str.charAt(i);
    };
 
    for (i = 0, lgth = 0; i < str.length; i++) {
        if ((chr = getWholeChar(str, i)) === false) {            continue;
        } // Adapt this line at the top of any loop, passing in the whole string and the current iteration and returning a variable to represent the individual character; purpose is to treat the first part of a surrogate pair as the whole character and then ignore the second part
        lgth++;
    }
    return lgth;
};


var substr = function(str, start, len) {
    var i = 0,
        allBMP = true,
        es = 0,        el = 0,
        se = 0,
        ret = '';
    str += '';
    var end = str.length; 
    // BEGIN REDUNDANT
    this.php_js = this.php_js || {};
    this.php_js.ini = this.php_js.ini || {};
    // END REDUNDANT    
    switch ((this.php_js.ini['unicode.semantics'] && this.php_js.ini['unicode.semantics'].local_value.toLowerCase())) {
    case 'on':
        // Full-blown Unicode including non-Basic-Multilingual-Plane characters
        // strlen()
        for (i = 0; i < str.length; i++) {            if (/[\uD800-\uDBFF]/.test(str.charAt(i)) && /[\uDC00-\uDFFF]/.test(str.charAt(i + 1))) {
                allBMP = false;
                break;
            }
        } 
        if (!allBMP) {
            if (start < 0) {
                for (i = end - 1, es = (start += end); i >= es; i--) {
                    if (/[\uDC00-\uDFFF]/.test(str.charAt(i)) && /[\uD800-\uDBFF]/.test(str.charAt(i - 1))) {                        start--;
                        es--;
                    }
                }
            } else {                var surrogatePairs = /[\uD800-\uDBFF][\uDC00-\uDFFF]/g;
                while ((surrogatePairs.exec(str)) != null) {
                    var li = surrogatePairs.lastIndex;
                    if (li - 2 < start) {
                        start++;                    } else {
                        break;
                    }
                }
            } 
            if (start >= end || start < 0) {
                return false;
            }
            if (len < 0) {                for (i = end - 1, el = (end += len); i >= el; i--) {
                    if (/[\uDC00-\uDFFF]/.test(str.charAt(i)) && /[\uD800-\uDBFF]/.test(str.charAt(i - 1))) {
                        end--;
                        el--;
                    }                }
                if (start > end) {
                    return false;
                }
                return str.slice(start, end);            } else {
                se = start + len;
                for (i = start; i < se; i++) {
                    ret += str.charAt(i);
                    if (/[\uD800-\uDBFF]/.test(str.charAt(i)) && /[\uDC00-\uDFFF]/.test(str.charAt(i + 1))) {                        se++; // Go one further, since one of the "characters" is part of a surrogate pair
                    }
                }
                return ret;
            }            break;
        }
        // Fall-through
    case 'off':
        // assumes there are no non-BMP characters;        //    if there may be such characters, then it is best to turn it on (critical in true XHTML/XML)
    default:
        if (start < 0) {
            start += end;
        }        end = typeof len === 'undefined' ? end : (len < 0 ? len + end : len + start);
    }
    return undefined; // Please Netbeans
};

var trim = function(str,charlist){
	  return str;
};

var rtrim = function(str, charlist) {
return str;
};


var ltrim = function(str, charlist) {
	return str;
};


var flashTextarea = function(obj){
	var nums = 0;
	var flash = function(){
		if(nums > 3 ){
			return false;
		}
		if(hasClass(obj,'fb')){
			removeClass(obj,'fb');
		}else{
			addClass(obj,'fb')
		}
		setTimeout(flash, 300);
		nums ++;
	}
	flash();
	return false;
};

var updateUserData = function(key, flag, uid)
{
	// 获取所有Key监听的对象
	var countObj = M.nodes.events[key];
	// 判断数据类型
	if("undefined" === typeof countObj) {
		return false;
	}
	if("undefined" === typeof uid) {
		uid = UID;
	}
	// 修改数值
	for(var i in countObj) {
		var _wC = countObj[i];
		var args = M.getEventArgs(_wC);
		if(args.uid == uid) {
			_wC.innerHTML = parseInt(_wC.innerHTML, 10) + parseInt(flag, 10);
		}
	}

	return false;
};


var scrolltotop={
	//startline: 鼠标向下滚动了100px后出现#topcontrol
	//scrollto: 它的值可以是整数，也可以是一个id标记。若为整数（假设为n），则滑动到距离top的n像素处；若为id标记，则滑动到该id标记所在的同等高处
	//scrollduration:滑动的速度
	//fadeduration:#topcontrol这个div的淡入淡出速度，第一个参数为淡入速度，第二个参数为淡出速度
	//controlHTML:控制向上滑动的html源码，默认为<img src="up.png" style="width:48px; height:48px" />，可以自行更改。该处的html代码会被包含在一个id标记为#topcontrol的div中。
	//controlattrs:控制#topcontrol这个div距离右下角的像素距离
	//anchorkeyword:滑动到的id标签
	

	setting: {startline:100, scrollto: 0, scrollduration:500, fadeduration:[500, 100]},
	controlHTML: '<a href="#top" class="top_stick">&nbsp;</a>',
	controlattrs: {offsetx:20, offsety:30},
	anchorkeyword: '#top',

	state: {isvisible:false, shouldvisible:false},

	scrollup:function(){
		if (!this.cssfixedsupport) {
			this.$control.css({opacity:0})
		};//点击后隐藏#topcontrol这个div
		var dest=isNaN(this.setting.scrollto)? this.setting.scrollto : parseInt(this.setting.scrollto);
		if (typeof dest=="string" && jQuery('#'+dest).length==1) { //检查若scrollto的值是一个id标记的话
			dest=jQuery('#'+dest).offset().top;
		} else { //检查若scrollto的值是一个整数
			dest=this.setting.scrollto;
		};
		this.$body.animate({scrollTop: dest}, this.setting.scrollduration);
	},

	keepfixed:function(){
		//获得浏览器的窗口对象
		var $window=jQuery(window);
		//获得#topcontrol这个div的x轴坐标
		var controlx=$window.scrollLeft() + $window.width() - this.$control.width() - this.controlattrs.offsetx;
		//获得#topcontrol这个div的y轴坐标
		var controly=$window.scrollTop() + $window.height() - this.$control.height() - this.controlattrs.offsety;
		//随着滑动块的滑动#topcontrol这个div跟随着滑动
		this.$control.css({left:controlx+'px', top:controly+'px'});
	},

	togglecontrol:function(){
		//当前窗口的滑动块的高度
		var scrolltop=jQuery(window).scrollTop();
		if (!this.cssfixedsupport) {
			this.keepfixed();
		};
		//若设置了startline这个参数，则shouldvisible为true
		this.state.shouldvisible=(scrolltop>=this.setting.startline)? true : false;
		//若shouldvisible为true，且!isvisible为true
		if (this.state.shouldvisible && !this.state.isvisible){
			this.$control.stop().animate({opacity:1}, this.setting.fadeduration[0]);
			this.state.isvisible=true;
		} //若shouldvisible为false，且isvisible为false
		else if (this.state.shouldvisible==false && this.state.isvisible){
			this.$control.stop().animate({opacity:0}, this.setting.fadeduration[1]);
			this.state.isvisible=false;
		}
	},

	init:function(){
		jQuery(document).ready(function($){
			var mainobj=scrolltotop;
			var iebrws=document.all;
			mainobj.cssfixedsupport=!iebrws || iebrws && document.compatMode=="CSS1Compat" && window.XMLHttpRequest; //not IE or IE7+ browsers in standards mode
			mainobj.$body=(window.opera)? (document.compatMode=="CSS1Compat"? $('html') : $('body')) : $('html,body');

			//包含#topcontrol这个div
			mainobj.$control=$('<div id="topcontrol">'+mainobj.controlHTML+'</div>')
				.css({position:mainobj.cssfixedsupport? 'fixed' : 'absolute', bottom:mainobj.controlattrs.offsety, right:mainobj.controlattrs.offsetx, opacity:0, cursor:'pointer'})
				.attr({title:L('PUBLIC_MOVE_TOP')})
				.click(function(){mainobj.scrollup(); return false;})
				.appendTo('body');

			if (document.all && !window.XMLHttpRequest && mainobj.$control.text()!='') {//loose check for IE6 and below, plus whether control contains any text
				mainobj.$control.css({width:mainobj.$control.width()}); //IE6- seems to require an explicit width on a DIV containing text
			};

			mainobj.togglecontrol();

			//点击控制
			$('a[href="' + mainobj.anchorkeyword +'"]').click(function(){
				mainobj.scrollup();
				return false;
			});

			$(window).bind('scroll resize', function(e){
				mainobj.togglecontrol();
			});
		});
	}
};
scrolltotop.init();
// JavaScript双语方法
function L(key, obj) {
	if('undefined' == typeof(LANG[key])) {
		return key;
	}
	if('object' != typeof(obj)) {
		return LANG[key];
	} else {
		var r = LANG[key];
		for(var i in obj) {
			r = r.replace("{"+i+"}", obj[i]);
		}
		return r;
	}
};

var unique = function(arr)
{
	var obj = {};
	for(var i = 0, j = arr.length; i < j; i++) {
		obj[arr[i]] = true;
	}
	var data = [];
	for(var i in obj) {
		data.push[i];
	}

	return data;
};
var shortcut = function (shortcut,callback,opt) {
	//Provide a set of default options
	var default_options = {
		'type':'keydown',
		'propagate':false,
		'target':document
	}
	if(!opt) opt = default_options;
	else {
		for(var dfo in default_options) {
			if(typeof opt[dfo] == 'undefined') opt[dfo] = default_options[dfo];
		}
	}

	var ele = opt.target
	if(typeof opt.target == 'string') ele = document.getElementById(opt.target);
	var ths = this;

	//The function to be called at keypress
	var func = function(e) {
		e = e || window.event;

		//Find Which key is pressed
		if (e.keyCode) code = e.keyCode;
		else if (e.which) code = e.which;
		var character = String.fromCharCode(code).toLowerCase();

		var keys = shortcut.toLowerCase().split("+");
		//Key Pressed - counts the number of valid keypresses - if it is same as the number of keys, the shortcut function is invoked
		var kp = 0;
		
		//Work around for stupid Shift key bug created by using lowercase - as a result the shift+num combination was broken
		var shift_nums = {
			"`":"~",
			"1":"!",
			"2":"@",
			"3":"#",
			"4":"$",
			"5":"%",
			"6":"^",
			"7":"&",
			"8":"*",
			"9":"(",
			"0":")",
			"-":"_",
			"=":"+",
			";":":",
			"'":"\"",
			",":"<",
			".":">",
			"/":"?",
			"\\":"|"
		}
		//Special Keys - and their codes
		var special_keys = {
			'esc':27,
			'escape':27,
			'tab':9,
			'space':32,
			'return':13,
			'enter':13,
			'backspace':8,

			'scrolllock':145,
			'scroll_lock':145,
			'scroll':145,
			'capslock':20,
			'caps_lock':20,
			'caps':20,
			'numlock':144,
			'num_lock':144,
			'num':144,
			
			'pause':19,
			'break':19,
			
			'insert':45,
			'home':36,
			'delete':46,
			'end':35,
			
			'pageup':33,
			'page_up':33,
			'pu':33,

			'pagedown':34,
			'page_down':34,
			'pd':34,

			'left':37,
			'up':38,
			'right':39,
			'down':40,

			'f1':112,
			'f2':113,
			'f3':114,
			'f4':115,
			'f5':116,
			'f6':117,
			'f7':118,
			'f8':119,
			'f9':120,
			'f10':121,
			'f11':122,
			'f12':123
		}


		for(var i=0; k=keys[i],i<keys.length; i++) {
			//Modifiers
			if(k == 'ctrl' || k == 'control') {
				if(e.ctrlKey) kp++;

			} else if(k ==  'shift') {
				if(e.shiftKey) kp++;

			} else if(k == 'alt') {
					if(e.altKey) kp++;

			} else if(k.length > 1) { //If it is a special key
				if(special_keys[k] == code) kp++;

			} else { //The special keys did not match
				if(character == k) kp++;
				else {
					if(shift_nums[character] && e.shiftKey) { //Stupid Shift key bug created by using lowercase
						character = shift_nums[character]; 
						if(character == k) kp++;
					}
				}
			}
		}

		if(kp == keys.length) {
			if (lock == 0) {
				lock = 1;
				setTimeout(function(){
					lock = 0;
				}, 1500);
			} else {
				return false;
			}
			callback(e);

			if(!opt['propagate']) { //Stop the event
				//e.cancelBubble is supported by IE - this will kill the bubbling process.
				e.cancelBubble = true;
				e.returnValue = false;

				//e.stopPropagation works only in Firefox.
				if (e.stopPropagation) {
					e.stopPropagation();
					e.preventDefault();
				}
				return false;
			}
		}
	}

	//Attach the function with the event
	var lock = 0;
	if(ele.addEventListener) ele.addEventListener(opt['type'], func, false);
	else if(ele.attachEvent) ele.attachEvent('on'+opt['type'], func);
	else ele['on'+opt['type']] = func;
};
var atWho = function (obj){
	obj.atWho("@",{
        tpl:"<li id='${id}' data-value='${searchkey}' input-value='${name}'><img src='${faceurl}'  height='20' width='20' /> ${name}</li>"
        ,callback:function(query,callback) {
        	if ( keyname.text=='' ){
        		$.ajax({
                    url:U('widget/SearchUser/searchAt')
                    ,type:'GET'
                    ,dataType: "json"
                    ,success:function(res) {
                    	if ( res.data == null ){
                    		$('#at-view').hide();
                    		return;
                    	} else {
    	                    datas = $.map(res.data,function(value,i){
    	                        return {'id':value.uid,'key':value.uname+":",'name':value.uname,'faceurl':value.avatar_small,'searchkey':value.search_key}
    	                        })
                    	}
                        callback(datas)
                    }
                })
        	} else {
        		$.ajax({
                    url:U('widget/SearchUser/search')
                    ,type:'GET'
                    ,data: "type=at&key="+keyname.text
                    ,dataType: "json"
                    ,success:function(res) {
                    	if ( res.data == null ){
                    		$('#at-view').hide();
                    		return;
                    	} else {
    	                    datas = $.map(res.data,function(value,i){
    	                        return {'id':value.uid,'key':value.uname+":",'name':value.uname,'faceurl':value.avatar_small,'searchkey':value.search_key}
    	                        })
                    	}
                        callback(datas)
                    }
                })
        	}
        }
        }).atWho("#",{
            tpl:"<li id='${id}' data-value='${searchkey}' input-value='${name}#'>${name}</li>"
                ,callback:function(query,callback) {
            		$.ajax({
                        url:U('widget/TopicList/searchTopic')
                        ,type:'GET'
                        ,data: "key="+keyname.text
                        ,dataType: "json"
                        ,success:function(res) {
                        	if ( res == null ){
                        		$('#at-view').hide();
                        		return;
                        	} else {
        	                    datas = $.map(res,function(value,i){
        	                        return {'id':value.topic_id,'name':value.topic_name,'searchkey':value.topic_name}
        	                        })
                        	}
                            callback(datas)
                        }
                    });
                }
         }).atWho("＃",{
             tpl:"<li id='${id}' data-value='${searchkey}' input-value='${name}＃'>${name}</li>"
                 ,callback:function(query,callback) {
             		$.ajax({
                         url:U('widget/TopicList/searchTopic')
                         ,type:'GET'
                         ,data: "key="+keyname.text
                         ,dataType: "json"
                         ,success:function(res) {
                         	if ( res == null ){
                         		$('#at-view').hide();
                         		return;
                         	} else {
         	                    datas = $.map(res,function(value,i){
         	                        return {'id':value.topic_id,'name':value.topic_name,'searchkey':value.topic_name}
         	                        })
                         	}
                             callback(datas)
                         }
                     });
                 }
          });
};
$(function(){
    $.fn.extend({
        inputToEnd: function(myValue){
            var $t=$(this)[0];
            if (document.selection) {
                this.focus();
                sel = document.selection.createRange();
                sel.text = myValue;
                this.focus();
            } else if ($t.selectionStart || $t.selectionStart == '0') {
                var startPos = $t.selectionStart;
                var endPos = $t.selectionEnd;
                var scrollTop = $t.scrollTop;
                $t.value = $t.value.substring(0, startPos) + myValue + $t.value.substring(endPos, $t.value.length);
                this.focus();
                $t.selectionStart = startPos + myValue.length;
                $t.selectionEnd = startPos + myValue.length;
                $t.scrollTop = scrollTop;
            } else {
                this.value += myValue;
                this.focus();
            }
        },
        inputToDIV: function(myValue){
        	
            var obj=$(this)[0];

			obj.focus();

			var selection = window.getSelection ? window.getSelection() : document.selection;

			var range = selection.createRange ? selection.createRange() : selection.getRangeAt(0);

			if (!window.getSelection){
				
				var selection = window.getSelection ? window.getSelection() : document.selection;

				var range = selection.createRange ? selection.createRange() : selection.getRangeAt(0);

				range.pasteHTML(myValue);

				range.collapse(false);

				range.select();

			}else{

				range.collapse(false);

				var hasR = range.createContextualFragment(myValue);

				var hasR_lastChild = hasR.lastChild;

				while (hasR_lastChild && hasR_lastChild.nodeName.toLowerCase() == "br" && hasR_lastChild.previousSibling && hasR_lastChild.previousSibling.nodeName.toLowerCase() == "br") {

					var e = hasR_lastChild;

					hasR_lastChild = hasR_lastChild.previousSibling;

					hasR.removeChild(e)

				}                                

				range.insertNode(hasR);

				if (hasR_lastChild) {

					range.setEndAfter(hasR_lastChild);

					range.setStartAfter(hasR_lastChild);

				}

				selection.removeAllRanges();

				selection.addRange(range);

			}

        }
    });
});

var removeHTMLTag = function(str)
{
	str = str.replace(/<\/?[^>]*>/g,'');
	return str;
};
var quickLogin = function (){
	ui.box.load(U('public/Passport/quickLogin'),'登录花草网');
};

(function(){
var fSwitchPic = function( oPicSection, nInterval ) {
	try {
		this.dPicSection = "string" === typeof oPicSection ? document.getElementById( oPicSection ) : oPicSection;
		this.nInterval = nInterval > 0 ? nInterval : 2000;
		this.dPicList  = this.dPicSection.getElementsByTagName( "div" );
		this.nPicNum   = this.dPicList.length;
	} catch( e ) {
		return e;
	}
	this.nCurrentPic = this.nPicNum - 1;
	this.nNextPic = 0;
	this.fInitPicList();

	this.dPicNav = this.dPicSection.getElementsByTagName( "ul" )[0];
	this.fInitPicNav();

	clearTimeout( this.oTimer );
	this.fSwitch();
	this.fStart();
};

fSwitchPic.prototype = {
	constructor: fSwitchPic,
	fInitPicList: function() {
		var oSwitchPic = this;
		this.dPicSection.onmouseover = function() {
			oSwitchPic.fPause();
		};
		this.dPicSection.onmouseout  = function() {
			oSwitchPic.fGoon();
		};
	},
	fInitPicNav: function() {
		var oSwitchPic = this,
			sPicNav = '',
			nPicNum = this.nPicNum;

		for ( var i = 0; i < nPicNum; i ++ ) {
			sPicNav += '<li style="list-style-type:none;"><a href="javascript:;" target="_self">' + ( i + 1 ) + '</a></li>';
		}
		this.dPicNav.innerHTML = sPicNav;

		// 追加属性和Event
		var dPicNavMenu = this.dPicNav.getElementsByTagName( "a" ),
		    nL = dPicNavMenu.length;

		while ( nL -- > 0 ) {
			dPicNavMenu[nL].nIndex = nL;
			dPicNavMenu[nL].onclick     = function() {
				oSwitchPic.fGoto( this.nIndex );
				return false;
			};
		}
		this.dPicNavMenu = dPicNavMenu;
	},
	fSwitch: function() {
		if ( this.nPicNum <= 1 ){
			var ob = $(this.dPicList[nNextPic]).find("img");
			if($(ob).attr('data-original'))
			{
			  $(ob).attr('src', $(ob).attr('data-original')).removeAttr('data-original');
			}	
			return;
		}
		var nCurrentPic = this.nCurrentPic,
			nNextPic    = this.nNextPic;
		
		var ob = $(this.dPicList[nNextPic]).find("img");
		if($(ob).attr('data-original'))
		{
		  $(ob).attr('src', $(ob).attr('data-original')).removeAttr('data-original');
		}
		
		this.dPicList[nNextPic].style.display = "";
		this.dPicList[nCurrentPic].style.display = "none";      
			
		
		this.dPicNavMenu[nNextPic].className = "sel";
		this.dPicNavMenu[nCurrentPic].className = "";

		this.nCurrentPic = nNextPic;
		this.nNextPic = ( nNextPic < this.nPicNum - 1 ) ? ( nNextPic + 1 ) : 0;
	},
	fStart: function() {
		var oSwitchPic = this;
		this.oTimer = setTimeout( function() {
			oSwitchPic.fSwitch();
			oSwitchPic.fStart();
		}, this.nInterval );
	},
	fPause: function() {
		clearTimeout( this.oTimer );
	},
	fGoon: function() {
		clearTimeout( this.oTimer );
		this.fStart();
	},
	fGoto: function( nIndex ) {
		var nIndex = parseInt( nIndex );
		if ( nIndex == this.nCurrentPic ) {
			return false;
		}
		
		clearTimeout( this.oTimer );
		this.nNextPic = nIndex;
		this.fSwitch();
	}
};

window.fSwitchPic = fSwitchPic;

})();

var switchVideo = function(id,type,host,flashvar){
	if( type == 'close' ){
		$("#video_mini_show_"+id).show();
		$("#video_content_"+id).html( '' );
		$("#video_show_"+id).hide();
	}else{
		$("#video_mini_show_"+id).hide();
		$("#video_content_"+id).html( showFlash(host,flashvar) );
		$("#video_show_"+id).show();
	}
}

//显示视频
var showFlash = function ( host, flashvar) {
	if(host=='youtube.com'){
		var flashHtml = '<iframe width="560" height="315"  src="http://www.youtube.com/embed/'+flashvar+'" frameborder="0" allowfullscreen></iframe>';
	}else{
	var flashHtml = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="430" height="400">'
        + '<param value="transparent" name="wmode"/>'
		+ '<param value="'+flashvar+'" name="movie" />'
		+ '<embed src="'+flashvar+'" wmode="transparent" allowfullscreen="true" type="application/x-shockwave-flash" width="525" height="420"></embed>'
		+ '</object>';
	}
	return flashHtml;
}

//过滤html标签
function strip_tags (input, allowed) {    
allowed = (((allowed || "") + "").toLowerCase().match(/<[a-z][a-z0-9]*>/g) || []).join(''); // making sure the allowed arg is a string containing only tags in lowercase (<a><b><c>)
    var tags = /<\/?([a-z][a-z0-9]*)\b[^>]*>/gi,
        commentsAndPhpTags = /<!--[\s\S]*?-->|<\?(?:php)?[\s\S]*?\?>/gi;
    return input.replace(commentsAndPhpTags, '').replace(tags, function ($0, $1) {
        return allowed.indexOf('<' + $1.toLowerCase() + '>') > -1 ? $0 : '';
    });
}
var _core = function() {
	// 核心通用的加载源函数
	var obj = this;
	// 加载文件方法
	this._coreLoadFile = function() {
		var temp = new Array();
		var tempMethod = function(url, callback) {
			// 第二次调用的时候就不=0了
			var flag = 0;
			for(i in temp) {
				if(temp[i] == url) {
					flag = 1;
				}
			}
			if(flag == 0) {
				// 未载入过
				temp[temp.length] = url;	
				// JQuery的ajax载入文件方式，如果有样式文件，同理在此引入相关样式文件
				$.getScript(url, function() {	
					if("undefined" != typeof(callback)) {
						if("function" == typeof(callback)) {
							callback();
						} else {
							eval(callback);
						}
					}
				});
			} else {
				if("undefined" != typeof(callback)) {
					// 利用setTimeout 避免未定义错误
					setTimeout(callback, 200);	
				}
			}
		};
		// 返回内部包函数，供外部调用并可以更改temp的值
		return tempMethod;
	};
	// 加载CSS文件
	this._loadCss = function() {
		var temp = new Array();
		var tempMethod = function(url) {
			// 第二次调用的时候就不=0了
			var flag = 0;
			for(i in temp) {
				if(temp[i] == url) {
					flag = 1;
				}
			}
			if(flag == 0) {
				// 未载入过
				temp[temp.length] = url;	
				var css = '<link href="'+THEME_URL+'/js/tbox/box.css" rel="stylesheet" type="text/css">';
				$('head').append(css);
			}
		};
		// 返回内部包函数,供外部调用并可以更改temp的值
		return tempMethod;
	};
	
	this._rcalendar = function(text, mode, refunc) {
		// 标记值 
		var temp = 0;	
		var tempMethod = function(t, m, r) {
			// 第二次调用的时候就不=0了
			if(temp == 0) {	
				// JQuery的ajax载入文件方式，如果有样式文件，同理在此引入相关样式文件
				$.getScript(THEME_URL+'/js/rcalendar.js', function() {	
					rcalendar(t, m, r);
				});
			} else {
				rcalendar(t, m, r);
			}
			temp++;
		};
		// 返回内部包函数，供外部调用并可以更改temp的值
		return tempMethod;	
	};
	
	this._createImageHtml = function() {
		var _imgHtml = '';
		var _c = function() {
			if(_imgHtml == '') {
				$.post(U('public/Feed/getSmile'), {}, function(data) {
					for(var k in data) {
						_imgHtml += '<a href="javascript:void(0)" title="'+data[k].title+'" onclick="core.face.face_chose(this)";><img src="'+ THEME_URL +'/image/expression/'+data[k].type+'/'+ data[k].filename +'" width="24" height="24" /></a>';	
					}
					_imgHtml += '<div class="c"></div>';
					$('#emot_content').html(_imgHtml);
				}, 'json');
			} else {
				$('#emot_content').html(_imgHtml);
			}
		};
		return _c;
	};
}

// 核心对象
var core = new _core();



//微博加载文件，支持回调函数 调用方式core.loadFile(url,callback)
core.loadFile = core._coreLoadFile();
core.loadCss = core._loadCss();


core.plugInit = function() {
	if(arguments.length > 0) {
		var arg = arguments;
		var back = function() {
			eval("var func = core." + arg[0] + ";");
			if("undefined" != typeof(func)) {
				func._init(arg);	
			}
		};
		var file = THEME_URL + '/js/plugins/core.' + arguments[0] + '.js';
		core.loadFile(file, back);
	}
};
//与上面方法类似 只不过可以自己写回调函数（不主动执行init）
core.plugFunc = function(plugName,callback){
	var file = THEME_URL+'/js/plugins/core.'+plugName+'.js';
	core.loadFile(file,callback);
};


core.setTimeout = function(func,time){
//	var type = typeof(func);
//	if("undefined" == type){
		setTimeout(func, time);
//	}else{
//		if("string" == type){
//			eval(func);
//		}else{
//			func();
//		}
//	}	

};
// 获取对象编辑框内的可输入数字
core.getLeftNums = function(obj) {
	var str = obj.innerHTML;
	// 替换br标签
	var imgNums = $(obj).find('img').size();
	// 判断是否为空
	var _str = str.replace(new RegExp("<br>","gm"),"");	
	_str = _str.replace(/[ ]|(&nbsp;)*/g, "");
	// 判断字数是否超过，一个空格算一个字
	_str = str.replace(/<[^>]*>/g, "");		// 去掉所有HTML标签
	_str = trim(_str,' ');
	
	if(imgNums <1 ) {
		var emptyStr = _str.replace(/&nbsp;/g,"").replace(/\s+/g,"");
		if(emptyStr.length == 0) {
			return initNums;
		}
	}
	_str = _str.replace(/&nbsp;/g,"a"); 	// 由于可编辑DIV的空格都是nbsp 所以这么算

	return initNums - getLength(_str) - imgNums;
};
core.getLength = function(str, shortUrl) {
	str = str + '';
	if (true == shortUrl) {
		// 一个URL当作十个字长度计算
		return Math.ceil(str.replace(/((news|telnet|nttp|file|http|ftp|https):\/\/){1}(([-A-Za-z0-9]+(\.[-A-Za-z0-9]+)*(\.[-A-Za-z]{2,5}))|([0-9]{1,3}(\.[0-9]{1,3}){3}))(:[0-9]*)?(\/[-A-Za-z0-9_\$\.\+\!\*\(\),;:@&=\?\/~\#\%]*)*/ig, 'xxxxxxxxxxxxxxxxxxxx')
							.replace(/^\s+|\s+$/ig,'').replace(/[^\x00-\xff]/ig,'xx').length/2);
	} else {
		return Math.ceil(str.replace(/^\s+|\s+$/ig,'').replace(/[^\x00-\xff]/ig,'xx').length/2);
	}
};
// 一些自定义的方法
// 生成表情图片
core.createImageHtml = core._createImageHtml();
//日期控件,调用方式 core.rcalendar(this,'full')
//this 也可以替换为具体ID,full表示时间显示模式,也可以参考rcalendar.js内的其他模式
core.rcalendar = core._rcalendar();	


//临时存储机制 适用于分割开存储的内容

core.stringDb = function(obj,inputname,tags){
    this.inputname = inputname;
    this.obj  = obj;
    if(tags != ''){
    	this.tags = tags.split(',');	
    }else{
    	this.tags = new Array();
    }
    this.taglist = $(obj).find('ul');
    this.inputhide = $(obj).find("input[name='"+inputname+"']");
};

core.stringDb.prototype = {
	init:function(){
		if(this.tags.length > 0){
			var html = '';
			for(var i in this.tags){
				if(this.tags[i] != ''){
					html +='<li><label>'+this.tags[i]+'</label><em>X</em></li>';
				}
			}
			this.taglist.html(html);
			this.bindUl();
		}
	},
	bindUl:function(){
		var _this = this;
		this.taglist.find('li').click(function(){
			_this.remove($(this).find('label').html());
		});
	},
    add:function(tag){
    	var _tag = tag.split(',');
    	var _this = this;
    	var add = function(t){
    		for(var i in _this.tags){
    			if(_this.tags[i] == t){
    				return false;
    			}
    		}
    		var html = '<li><label>'+t+'</label><em>X</em></li>';
    		_this.tags[_this.tags.length] = t;
    		_this.taglist.append(html);		
    	};	

    	for(var ii in _tag){ 
    		if(_tag[ii] != ''){
    			add(_tag[ii]);
    		}
    	}
    	
    	this.inputhide.val(this.tags.join(','));
    	this.bindUl();
    },
    remove:function(tag){
    	var del = function(arr,n){
    		if(n<0){
    			return arr;
    		}else{
    			return arr.slice(0,n).concat(arr.slice(n+1,arr.length))
    		}
    	}

    	for(var i in this.tags){
    		if(this.tags[i] == tag){
    			this.tags = del(this.tags,parseInt(i));
    			this.taglist.find('li').eq(i).remove();
    			this.inputhide.val(this.tags.join(','));
    		}
    	}
    }	
};



var U = function(url, params) {
	var website = SITE_URL+'/index.php';
	url = url.split('/');
	if(url[0]=='' || url[0]=='@')
		url[0] = APPNAME;
	if (!url[1])
		url[1] = 'Index';
	if (!url[2])
		url[2] = 'index';
	website = website+'?app='+url[0]+'&mod='+url[1]+'&act='+url[2];
	if(params) {
		params = params.join('&');
		website = website + '&' + params;
	}
	return website;
};

var ui = {
	
	showMessage: function(message, error, lazytime) {
		var style = (error=="1") ? "html_clew_box clew_error" : "html_clew_box";
		var ico = (error == "1") ? 'ico-error' : 'ico-ok';
		var html = '<div class="'+style+'" id="ui_messageBox" style="display:none">\
					<div class="html_clew_box_con" id="ui_messageContent">\
					<i class="'+ico+'"></i>'+message+'</div></div>';		
		var _u = function() {
			for (var i = 0; i < arguments.length; i++) {
		        if (typeof arguments[i] != 'undefined') return false;
			}
		    return true;
		};
		// 显示提示弹窗
		ui.showblackout();
		// 将弹窗加载到body后
		$(html).appendTo(document.body);
		// 获取高宽
		var _h = $('#ui_messageBox').height();
		var _w = $('#ui_messageBox').width();
		// 获取定位值
		var left = ($('body').width() - _w)/2 ;
		var top  = $(window).scrollTop() + ($(window).height()-_h)/2;
		// 添加弹窗样式与动画效果（出现）
		$('#ui_messageBox').css({
			left:left + "px",
			top:top + "px"
		}).fadeIn("slow",function(){
			$('#ui_messageBox').prepend('<iframe style="z-index:;position: absolute;visibility:inherit;width:'+_w+'px;height:'+_h+'px;top:0;left:0;filter=\'progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0)\'"'+
		 	'src="about:blank"  border="0" frameborder="0"></iframe>');
		});
		// 添加弹窗动画效果（消失）
		setTimeout(function() { 
			$('#ui_messageBox').find('iframe').remove();
			$('#ui_messageBox').fadeOut("fast", function() {
			  ui.removeblackout();
			  $('#ui_messageBox').remove();
			});
		} , lazytime*1000);
	},
	
	showblackout: function() {
		if($('.boxy-modal-blackout').length > 0) {
			// TODO:???
    	} else {
    		var height = $('body').height() > $(window).height() ? $('body').height() : $(window).height();
    		$('<div class ="boxy-modal-blackout" ><iframe style="z-index:-1;position: absolute;visibility:inherit;width:'+$('body').width()+'px;height:'+height+'px;top:0;left:0;filter=\'progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0)\'"'+
		 'src="about:blank"  border="0" frameborder="0"></iframe></div>')
        	.css({
        	    height:height+'px',width:$('body').width()+'px',zIndex: 999, opacity: 0.5
        	}).appendTo(document.body);
    	}
	},
	
	removeblackout: function() {
		if($('#tsbox').length > 0) {
		 	if(document.getElementById('tsbox').style.display == 'none'){
		 		$('.boxy-modal-blackout').remove();
		 	}	
		 } else {
		 	$('.boxy-modal-blackout').remove(); 	
		 }
	},
	
	success: function(message, time) {
		var t = "undefined" == typeof(time) ? 1 : time;
		ui.showMessage(message, 0, t);
	},
	
	error: function(message, time) {
		var t = "undefined" == typeof(time) ? 2 : time;
		ui.showMessage(message, 1, t);
	},
	
	confirm: function(o, text, _callback) {
		// 判断弹窗是否存在
		document.getElementById('ts_ui_confirm') !== null && $('#ts_ui_confirm').remove();
		var callback = "undefined" == typeof(_callback) ? $(o).attr('callback') : _callback;
		text = text || L('PUBLIC_ACCONT_TIPES');
		text = "<i class='ico-error'></i>"+text;
		this.html = '<div id="ts_ui_confirm" class="ts_confirm"><div class="layer-mini-info"><dl><dt class="txt"> </dt><dd class="action"><a class="btn-green-small mr10 btn_ok" href="javascript:void(0)"><span>'+L('PUBLIC_QUEDING')+'</span></a><a class="btn-cancel" href="javascript:void(0)"><span>'+L('PUBLIC_QUXIAO')+'</span></a></dd></dl></div></div>';
		$('body').append(this.html);
		var position = $(o).offset();
		$('#ts_ui_confirm').css({"top":position.top+"px","left":position.left+"px","display":"none"});
		$("#ts_ui_confirm .txt").html(text);
		$('#ts_ui_confirm').fadeIn("fast");
		$("#ts_ui_confirm .btn-cancel").one('click',function(){
			$('#ts_ui_confirm').fadeOut("fast");
			// 修改原因: ts_ui_confirm .btn_b按钮会重复提交
			$('#ts_ui_confirm').remove();
			return false;
		});
		$("#ts_ui_confirm .btn_ok").one('click',function(){
			$('#ts_ui_confirm').fadeOut("fast");
			// 修改原因: ts_ui_confirm .btn_b按钮会重复提交
			$('#ts_ui_confirm').remove();
			if("undefined" == typeof(callback)){
				return true;
			}else{
				if("function"==typeof(callback)){
					callback();
				}else{
					eval(callback);
				}
			}
		});
		$('body').bind('keyup', function(event) {
            $("#ts_ui_confirm .btn_ok").click();
        });
		return false;
	},
	
	confirmBox: function(title, text, _callback) {
		this.box.init(title);
		text = text || L('PUBLIC_ACCONT_TIPES');
		text = "<i class='ico-error'></i>"+text;

		var content = '<div class="pop-create-group"><dl><dt class="txt">'+ text + '</dt><dd class="action"><a class="btn-green-small mr10" href="javascript:void(0)"><span>'+L('PUBLIC_QUEDING')+'</span></a><a class="btn-cancel" href="javascript:void(0)"><span>'+L('PUBLIC_QUXIAO')+'</span></a></dd></dl></div>';

		this.box.setcontent(content);
		this.box.center();

		var callback = "undefined" == typeof(_callback) ? $(o).attr('callback') : _callback;

		var _this = this;
		$("#tsbox .btn-cancel").one('click',function(){
			$('#tsbox').fadeOut("fast",function(){
				$('#tsbox').remove();	
			});
			_this.box.close();
			return false;
		});
		$("#tsbox .btn-green-small").one('click',function(){
			$('#tsbox').fadeOut("fast",function(){
				$('#tsbox').remove();
			});
			_this.box.close();
			if("undefined" == typeof(callback)){
				return true;
			}else{
				if("function"==typeof(callback)){
					callback();
				}else{
					eval(callback);
				}
			}
		});
		return false;
	},
	
	sendmessage: function(touid, editable) {
		if(typeof(editable) == "undefined" ) {
			editable = 1;
		}
		touid = touid || '';
		this.box.load(U('public/Message/post')+'&touid='+touid+'&editable='+editable, L('PUBLIC_SETPRIVATE_MAIL'));
	},
	
	sendat: function(touid) {
		touid = touid || '';
		this.box.load(U('public/Mention/at')+'&touid='+touid, '@TA');
	},
	
	sendbox: function(title, initHtml,channelID) {
		if($.browser.msie) {
			initHtml = encodeURI(initHtml);
		}
		initHtml = initHtml.replace(/\#/g, "%23"); 
		this.box.load(U('public/Index/sendFeedBox')+'&initHtml='+initHtml+'&channelID='+channelID, title,function(){
			$('#at-view').hide();
		});
	},
	
	reply: function(comment_id) {
		this.box.load(U('public/Comment/reply')+'&comment_id='+comment_id,L('PUBLIC_RESAVE'),function (){$('#at-view').hide();});
	},
	groupreply: function(comment_id,gid) {
		this.box.load(U('group/Group/reply')+'&gid='+gid+'&comment_id='+comment_id,L('PUBLIC_RESAVE'),function (){$('#at-view').hide();});
	},
	
	changeDepartment: function(hid,showname,sid,nosid,notop) {
		this.box.load(U('widget/Department/change')+'&hid='+hid+'&showName='+showname+'&sid='+sid+'&nosid='+nosid+'&notop='+notop,L('PUBLIC_DEPATEMENT_SELECT'));
	},
	
	box: {
		WRAPPER: '<div class="wrap-layer" id="tsbox" style="display:none">\
     			  <div class="content-layer">\
     			  <div class="layer-content" id="layer-content"></div>\
     			  </div></div>',
		inited: false,
		IE6: (jQuery.browser.msie && jQuery.browser.version < 7),
		init: function(title, callback) {
			this.callback = callback;
			// 弹窗中隐藏小名片
			if("undefined" != typeof(core.facecard)){
				core.facecard.dohide();
			}

			if($('#tsbox').length >0) {
				return false;
			} else {
				$('body').prepend(this.WRAPPER);
			}
			var url = THEME_URL+'/js/tbox/box.css';
			core.loadCss(url);
			// 添加头部
			if("undefined" != typeof(title)) {
				$("<div class='hd'>"+title+"<a class='ico-close' href='#'></a></div>").insertBefore($('#tsbox .layer-content'));
			}
			
			ui.showblackout();
			
			$('#tsbox').stop().css({width: '', height: ''});
			// 添加键盘事件
			jQuery(document.body).bind('keypress.tsbox', function(event) {
				var key = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
				if (key == 27) {
					jQuery(document.body).unbind('keypress.tsbox');
					ui.box.close(callback);
					return false;
				}
			});
			// 关闭弹窗，回调函数
			$('#tsbox').find('.ico-close').click(function() {
				ui.box.close(callback);
				return false;
			});
			
			this.center();
			var show = function(){
				$('#tsbox').show();
			}
			setTimeout(show, 200);
			
			$('#tsbox').draggable({ handle: '.hd' });

			$('.hd').mousedown(function(){
				$('.mod-at-wrap').remove();
			});
		},
		
		setcontent: function(content) {
			$('#layer-content').html(content);
		},
		
		close: function(fn) {
			$('#ui-fs .ui-fs-all .ui-fs-allinner div.list').find("a").die("click");
			$('.talkPop').remove();
			$('#tsbox').remove();
			$('.mod-at-wrap').remove();
			jQuery('.boxy-modal-blackout').remove();
			var back ='';
			if("undefined" != typeof(fn)){
			 	back = fn;
			}else if("undefined" != typeof(this.callback)){
				back = this.callback;
			}
			if("function" == typeof(back)){
				back();
			}else{
				eval(back);
			}
		},
		
		alert:function(data,title,callback){
			this.init(title,callback);
			this.setcontent('<div class="question">'+data+'</div>');
			this.center();
		},
		
		show:function(content,title,callback){
			this.init(title,callback);
			this.setcontent(content);
			this.center();
		},
		
		load:function(requestUrl,title,callback,requestData,type) {
			this.init(title,callback);
			if("undefined" != typeof(type)) {
				var ajaxType = type;
			}else{
				var ajaxType = "GET";
			}
			this.setcontent('<div style="width:150px;height:70px;text-align:center"><div class="load">&nbsp;</div></div>');
			var obj = this;
			if("undefined" == requestData) {
				var requestData = {};
			}
			jQuery.ajax({url:requestUrl,
				type:ajaxType,
				data:requestData,
				cache:false,
				dataType:'html',
				success:function(html){
					obj.setcontent(html);
					obj.center();
				}
			});
		},	
		
		_viewport: function() {
			var d = document.documentElement, b = document.body, w = window;
			return jQuery.extend(
				jQuery.browser.msie ? { left: b.scrollLeft || d.scrollLeft, top: b.scrollTop || d.scrollTop } : { left: w.pageXOffset, top: w.pageYOffset },
				!ui.box._u(w.innerWidth) ? { width: w.innerWidth, height: w.innerHeight } : (!ui.box._u(d) && !ui.box._u(d.clientWidth) && d.clientWidth != 0 ? { width: d.clientWidth, height: d.clientHeight } : { width: b.clientWidth, height: b.clientHeight }) );
		},
		
		_u: function() {
			for(var i = 0; i < arguments.length; i++) {
				if(typeof arguments[i] != 'undefined') return false;
			}
			return true;
		},
		
		_cssForOverlay: function() {
			if (ui.box.IE6) {
				return ui.box._viewport();
			} else {
				return {width: '100%', height: jQuery(document).height()};
			}
		},
		
		center: function(axis) {
			var v = ui.box._viewport();
			var o =  [v.left, v.top];
			if (!axis || axis == 'x') this.centerAt(o[0] + v.width / 2 , null);
			if (!axis || axis == 'y') this.centerAt(null, o[1] + v.height / 2);
			return this;
		},
		
		moveToX: function(x) {
			if (typeof x == 'number') $('#tsbox').css({left: x});
			else this.centerX();
			return this;
		},
		
		moveToY: function(y) {
			if (typeof y == 'number') $('#tsbox').css({top: y});
			else this.centerY();
			return this;
		},      
		centerAt: function(x, y) {
			var s = this.getSize();
			if (typeof x == 'number') this.moveToX(x - s[0]/2 );
			if (typeof y == 'number') this.moveToY(y - s[1]/2 );
			return this;
		},
		centerAtX: function(x) {
			return this.centerAt(x, null);
		},
		centerAtY: function(y) {
			return this.centerAt(null, y);
		},
		getSize: function() {
			return [$('#tsbox').width(), $('#tsbox').height()];
		},
		getContent: function() {
			return $('#tsbox').find('.boxy-content');
		},
		getPosition: function() {
			var b = $('#tsbox');
			return [b.offsetLeft, b.offsetTop];
		},        
		getContentSize: function() {
			var c = this.getContent();
			return [c.width(), c.height()];
		},
		_getBoundsForResize: function(width, height) {
			var csize = this.getContentSize();
			var delta = [width - csize[0], height - csize[1]];
			var p = this.getPosition();
			return [Math.max(p[0] - delta[0] / 2, 0), Math.max(p[1] - delta[1] / 2, 0), width, height];
		}
	}
};


(function(window) {

var document = window.document;


var module = function( node, fns ) {
    module.addFns(fns);
	if ( node ) {
		// 预清除，防止重复模型化引起的双重缓存
		module.nodes.init( node );
	}
};


module.addFns = function( fns ) {
	if ( !fns ) return module;
	if ( fns.model ) {
		module.addModelFns( fns.model );
	}
	if ( fns.event ) {
		module.addEventFns( fns.event );
	}
	return module;
};


module.addModelFns = function( fns ) {
	if ( "object" != typeof fns ) return module;
	var name;
	for ( name in fns ) {
		module.nodes.models.fns[name] = fns[name];
	}
	return module;
};


module.addEventFns = function( fns ) {
	if ( "object" != typeof fns ) return module;
	var name;
	for ( name in fns ) {
		module.nodes.events.fns[name] = fns[name];
	}
	return module;
};


module.getArgs = function( node ) {
	return node.getAttribute( "model-node" ) ? module.getModelArgs( node ) : module.getEventArgs( node );
};


module.setArgs = function( node, uri ) {
	return node.getAttribute( "model-node" ) ? module.setModelArgs( node, uri ) : module.setEventArgs( node, uri );
};


module.getModelArgs = function( node, uri ) {
    node.args || ( node.args = module.URI2Obj( node.getAttribute( "model-args" ) ) );
    return node.args;
};


module.setModelArgs = function( node, uri ) {
    node.args = undefined;
    node.setAttribute( "model-args", uri );
    return module;
};


module.getEventArgs = function( node ) {
    node.args || ( node.args = module.URI2Obj( node.getAttribute( "event-args" ) ) );
    return node.args;
};


module.setEventArgs = function( node, uri ) {
    node.args = undefined;
    node.setAttribute( "event-args", uri );
    return module;
};


module.URI2Obj = function( uri ) {
	if ( ! uri ) return {};
    var obj = {},
    	args = uri.split( "&" ),
    	l, arg;
    l = args.length;
    while ( l -- > 0 ) {
        arg = args[l];
        if ( ! arg ) {
            continue;
        }
        arg = arg.split( "=" );
        obj[arg[0]] = arg[1];
    }
    return obj;
};


module.getModels = function( name ) {
	return module.nodes.models[name];
};


module.getEvents = function( name ) {
	return module.nodes.events[name];
}


module.removeListener = function( node ) {
	module.nodes.removeListener( node );
	return module;
};


module.addListener = function( node, events ) {
	module.nodes.addListener( node, events );
	return module;
};

module.getPreviousModel = function( node, siblingName ) {
	return module.nodes.getPreviousModel( node, siblingName );
};

module.getNextModel = function( node, siblingName ) {
	return module.nodes.getNextModel( node, siblingName );
};

module.getPreviousEvent = function( node, siblingName ) {
	return module.nodes.getPreviousEvent( node, siblingName );
};

module.getNextEvent = function( node, siblingName ) {
	return module.nodes.getNextEvent( node, siblingName );
};


module.nodes = {
	init: function( node ) {
		// 初始化模型
		this._init( node );
		// 执行onload 事件
		this._onload.execute();
		return this;
	},
	_init: function( node, parentModel ) {
		var childNode = node.firstChild,
			childParentModel,
		    model_name,
		    event_name;

		! parentModel && ( parentModel = this.getParentModel( node ) );

		switch ( node.nodeName ) {
			case "DIV": case "UL":case "DL": 
			case "FORM":case "LI":case "DD": 
				model_name = node.getAttribute( "model-node" );
				if ( model_name ) {
					this._clearModel( node );

					node.modelName = model_name;

					this.addListener( node, this.models.fns[model_name] );

					node.parentModel = parentModel;

					( parentModel.childModels[model_name] = parentModel.childModels[model_name] || [] ).push( node );

					( this.models[model_name] = this.models[model_name] || [] ).push( node );

					childParentModel = node;
				}
				break;
			case "A": case "SPAN": case "LABEL":
			case "STRONG": case "INPUT": case "SELECT":
			case "BUTTON": case "IMG": case "TEXTAREA": 
			case "H1": case "H2": case "H3": case "H4":case "I":			
				event_name = node.getAttribute( "event-node" );
				if ( event_name ) {
					this._clearEvent(node);

					node.eventName = event_name;

					this.addListener( node, this.events.fns[event_name] );

					node.parentModel = parentModel;
					( parentModel.childEvents[event_name] = parentModel.childEvents[event_name] || [] ).push( node );

					( this.events[event_name] = this.events[event_name] || [] ).push( node );
				}
				break;
			case "HEAD": case "BODY":
				this[node.nodeName.toLowerCase()] = node;
				break;
			case "#document":
				this._clearModel(node);
				break;
		}

		! childParentModel && ( childParentModel = parentModel );
		while ( childNode ) {
			(1 == childNode.nodeType ) && this._init( childNode, childParentModel );
			childNode = childNode.nextSibling;
		}
	},
	_clearModel: function( node ) {
		node.modelName   = undefined;
		node.parentModel = undefined;
		node.childModels = {};
		node.childEvents = {};
		node.args = undefined;
		return this;
	},
	_clearEvent: function( node ) {
		node.eventName   = undefined;
		node.parentModel = undefined;
		node.args = undefined;
		return this;
	},
	getParentModel: function( node ) {
		var parentNode = node.parentNode,
			parentModel;
		if ( parentNode && 1 === parentNode.nodeType ) {
			parentModel = parentNode.getAttribute('model-node') ? parentNode : this.getParentModel( parentNode );
		}
		return parentModel || document;
	},
	getPreviousModel: function( node, siblingName ) {
		return this._getSiblingNode( node, { siblingType: "model", siblingName: siblingName }, "previous" );
	},
	getNextModel: function( node, siblingName ) {
		return this._getSiblingNode( node, { siblingType: "model", siblingName: siblingName }, "next" );
	},
	getPreviousEvent: function( node, siblingName ) {
		return this._getSiblingNode( node, { siblingType: "event", siblingName: siblingName }, "previous" );
	},
	getNextEvent: function( node, siblingName ) {
		return this._getSiblingNode( node, { siblingType: "event", siblingName: siblingName }, "next" );
	},
	_getSiblingNode: function( node, siblingArgs, direction ) {
		var sibling;
		if ( !node ) return null;
		sibling = node[ [ direction, "Sibling" ].join("") ];
		return ( sibling && ( siblingArgs.siblingName === sibling[ [ siblingArgs.siblingType, "Name" ].join("") ] ) ) ? sibling : this._getSiblingNode( sibling, siblingArgs, direction );
	},
	addListener: function( node, events ) {
        if ( "object" == typeof events ) {
        	var event;
            for ( event in events ) {
            	switch ( event ) {
            		case "load":
            			node[event] = events[event];
                        // 添加到队列
                        this._onload.queue.push( node );
           			    break;
            		case "callback":
            			node[event] = events[event];
            			break;
           			case "mouseenter": case "mouseleave":
           				// 兼容非IE
           				if ( document.addEventListener ) {
           					var refer = {mouseenter: "mouseover", mouseleave: "mouseout"};
           					node["on" + refer[event]] = (function( event, fn ){
           						return function( e ) {
	           						// 上一响应mouseover/mouseout 事件的元素
	           						var parent = e.relatedTarget;
	           						// 假如存在这个元素并且这个元素不等于目标元素
									while( parent && parent != this ){
										try {
											//上一响应的元素开始往上寻找目标元素
											parent = parent.parentNode;
										} catch( e ) {
											break;
										}
							 
									}
									// 假如找不到，表明当前事件触发点不在目标元素内
									if ( parent != this ) {
										//运行目标方法，否则不运行
										node[event] = fn;
										node[event]();
									}
								};
           					})( event, events[event] );
           				} else {
                        	node["on" + event] = events[event];
           				}
           				break;
            		default :
                        node["on" + event] = events[event];
            	}
            }
        }
	},
	removeListener: function( node ) {
		node.onclick = node.onfocus = node.onblur = node.onmouseout
		= node.onmouseover = node.onmouseenter = node.onmouserleave
		= node.onchange = null;
		return this;
	},
	_onload: {
		execute: function() {
			var l = this.queue.length,
				i;
			for ( i = 0; i < l; i ++ ) {
				
				this.queue[i]["load"]();
				this.queue[i]["load"] = undefined;	
				
			}
			// 重置队列
			this.queue = [];
		},
		queue: []
	},
	models: {
		fns: {

		}
	},
	events: {
		fns: {
		}
	},
	getHead: function() {
		this.head || (this.head = document.getElementsByTagName("head")[0]);
		return this.head;
	},
	getBody: function() {
		this.body || (this.body = document.getElementsByTagName("body")[0]);
		return this.body;
	}
};


module.getCSS = (function() {
	var temp = [];
	//返回内部包函数,供外部调用并可以更改temp的值
	return function( url ){
		var	head = module.nodes.getHead(),
			flag = 0,
			link,
			i = temp.length - 1;
		// 第二次调用的时候就不=0了
		for ( ; i >= 0; i -- ) {
			flag = ( temp[i] == url ) ? 1 : 0;
		}

		if ( flag == 0 ) {
			// 未载入过
		    link  = document.createElement( "link" );
			link.setAttribute( "rel", "stylesheet" );
			link.setAttribute( "type", "text/css" );
			link.setAttribute( "href", url );
			head.appendChild( link );
			temp.push( url );
		}
	};
})();


module.getJS = (function() {
	var temp = [];
	//返回内部包函数,供外部调用并可以更改temp的值
	return function( url, fn ){
		// 第二次调用的时候就不=0了
		var	head,
			script,
			onload,
			flag = 0,
			i = temp.length - 1;
		// 第二次调用的时候就不=0了
		for ( ; i >= 0; i -- ) {
			flag = ( temp[i] == url ) ? 1 : 0;
		}

		if ( flag == 0 ) {
			// 未载入过
			// 记录url
			temp.push( url );
			// 载入
			head = module.nodes.getHead();
			script = document.createElement( "script" );
			script.setAttribute( "src", url );

			if ( "function" == typeof fn ) {
				script.onload = script.onreadystatechange = function() {
					// FF 下没有readyState 值，IE 有readyState 值，需加以判断
					if( ! this.readyState || "loaded" == this.readyState || "complete" == this.readyState ) {
						this.onload = this.onreadystatechange = null;

						fn();

						fn = undefined;

						script = undefined;
					}
				};
			}

			head.appendChild( script );
		} else {
			if("function" == typeof fn){
				fn();
				fn = undefined;
			}	
		}
	};
})();


module.ready = function( fn ) {
	if ( "function" !== typeof fn ) {
		return;
	}

	if ( document.addEventListener ) {
		// Use the handy event callback
		document.addEventListener( "DOMContentLoaded", fn, false );
	// If IE event model is used
	} else if ( document.attachEvent ) {
		// maybe late but safe also for iframes
		document.attachEvent( "onreadystatechange", fn );
	}
};

window.M = module;

M.ready(function() {
	M(document);
});

})(window);
M.addModelFns({
	invite_colleague_form: {
		callback: function( txt ) {
			ui.success( txt.info );
			ui.box.close();
		}
	},
	drop_menu_list: {
		load: function() {
			var parentModel = this.parentNode,
				list = this;
			// 鼠标进入父Model，显示Menu；反之，则隐藏Menu。
			M.addListener( parentModel, {
				mouseenter: function() {
					var className = this.className;
					this.className = [ className, " drop" ].join( "" );
					list.style.display = "block";
				},
				mouseleave: function() {
					var className = this.className;
					this.className = className.replace(/(\s+drop)+(\s+|$)/g, "");
					list.style.display = "none";
					
				}
			});
		}
	},
	search_icon:{
		mouseleave:function(){
			// $('.search_footer').attr('ison','no');
			// setTimeout(function(){
			// 	if($('.search_footer').attr('ison')=='no'){
			// 		$('.search_footer').hide();
			// 	}
			// },150);
		},
		click:function(){
			if($('.search_footer').attr('ison') == 'yes'){
				$('.search_footer').attr('ison','no');
				$('.search_footer').hide();
				return true;
			}
			$('.search_footer').attr('ison','yes');
			$('.search_footer').show();
		}
	},
	search_menu_footer:{
	  	click:function(){
	  		var offset = $(this).offset();
	  		$('#search_menu').css({'left':offset.left+'px','top':offset.top-35+'px','width':'81px'}).show();
	  		$('#search_menu').attr('ison','yes');
		   },
	  	mouseleave:function(){
	  		//setTimeout(core.search.hideMenu,300);
	  	},
	  	blur:function(){
  			core.search.dohide();
  		}
  	},
  	search_menu:{
	  	click:function(){
	  		var offset = $(this).offset();
	  		$('#search_menu').css({'left':offset.left+'px','top':offset.top+$(this).height()+12+'px','width':'81px'}).show();
	  		$('#search_menu').attr('ison','yes');
		   },
	  	mouseleave:function(){
	  		setTimeout(core.search.hideMenu,300);
	  	},
	  	blur:function(){
	  		core.search.dohide();
	  	}
	  },
	search_menu_ul:{
	  	mouseleave:function(){
	  		$('.search_footer').attr('ison','yes');
	  		core.search.dohide();
	  	},
	  	mouseenter:function(){
	  		core.search.doshow(); 
	  	}
	 },
	search_footer:{
		mouseleave:function(){
			// $(this).attr('ison','no');
			// var _this = this;
			// setTimeout(function(){
			// 	$(_this).hide();
			// },'250');
		},
		mouseenter:function(){
			$(this).attr('ison','yes');
		}
	},
	drop_search:{
		load:function(){
			var _this = this;
			core.plugInit('search');
			$(this.childEvents['searchKey'][0]).click(function(){
				core.search.searchInit(this);
			});	
		}
	},
	wigdet_setform:{
		callback:function(data){
			core.widget.afterSet(data);
		}
	},
	diy_widget:{
		load:function(data){
			var child = this.childModels['widget_box'];
			var _this = this;
			var args  = M.getModelArgs(this);
			core.plugFunc('widget',function(){
				//拖动处理
				core.loadFile(THEME_URL+'/js/ui.sortable.js',function(){
					$(_this).sortable({
						items: '.ui-state-disabled',
						placeholder: 'ui-selected',
						revert: 0.01,
						helper: 'clone', 
						update:function(){
							core.widget.dosort(args,_this);
						}
					});
					$(child).disableSelection();	
				});
			});
		}
	}
});
M.addEventFns({
	widget_toggle:{
		click:function(){
			$(this.parentModel.childModels['widget_child'][0]).toggle('500');
		}
	},
	widget_setup:{
		click:function(){
			$(this.parentModel.childModels['wigdet_setbox'][0]).toggle('500');	
		}
	},
	widget_cancel_set:{
		click:function(){
			$(this.parentModel).hide('500');
		}
	},
	widget_close:{
		click:function(){
			var args = M.getModelArgs(this.parentModel);
			core.widget.removeWidget(this,args,this.parentModel);
		}
	},
	widget_add:{
		click:function(){
			var args = M.getEventArgs(this);
			core.widget.addWidget(args);
		}
	},
	invite_colleague: {
		click: function() {
			ui.box.load( this.href, L('PUBLIC_INVITE_COLLEAGUE') );
			return false;
		}
	},	
	invite_addemail:{
		click: function() {
			var input1 = document.getElementById("email_input").value,
				$email_input = $("#email_input"),
				dInput = this.parentModel.childEvents["email"][0],
				dInputClone = dInput.cloneNode( true );

			dInputClone.value = "";
			$email_input.append( dInputClone );
			M( dInputClone );
			return false;
		}
	},
	face_card:{
		load:function(){
			//载入小名片js
			core.plugInit('facecard'); //只初始化那个框体
		},
		mouseenter:function(){
			var uid = $(this).attr('uid');
			if(MID<1 || (MID == uid) || (UID ==uid)){
				return false;
			}
			var obj = $(this);
			//setTimeout(function(){
			if("undefined" == typeof(core.facecard)){
				core.plugFunc('facecard',function(){
					core.facecard.show(obj,uid);
				})
			}else{
				core.facecard.show(obj,uid);
			}
			//},'250');
			
		},
		mouseleave:function(){
			if(MID<1){
				return false;
			}
			core.facecard.hide();
		},
		blur:function(){
			core.facecard.hide();	
		}
	},
	//个人信息
	more_person_info: {
		click: function() {
			var li;

			li = this.parentNode;
			li.style.display = "block";
			
			if($(this).attr('rel')=='hide'){
				var _display = 'block';
				$(this).attr('rel','show');
				$('.mod-person .person-info a').text(L('PUBLIC_PUT')+"↑")
			}else{
				var _display = 'none';
				$(this).attr('rel','hide');
				$('.mod-person .person-info a').text(L('PUBLIC_OPEN_MORE')+"↓")
			}
			
			while ( li = li.nextSibling ) {
				( "LI" === li.tagName ) && ( li.style.display = _display );

			}
			
			return false;
		}
	},
	ico_wallet:{//财富
		mouseenter:function(){
			this._model.style.display = 'block';
		},
		mouseleave:function(){
			this._model.style.display = 'none';
		},
		load:function(){
			var _model = M.getModels('layer_wallet');
			this._model = _model[0];
		}
	},
	ico_level:{//等级
		mouseenter:function(){
			this._model.style.display = 'block';
		},
		mouseleave:function(){
			this._model.style.display = 'none';
		},
		load:function(){
			var _model = M.getModels('layer_level');
			this._model = _model[0];
		}
	},
	share:{//分享操作
		click : function(){
			var attrs =M.getEventArgs(this);
			//alert(typeof(attrs));exit;
			// if(attrs.appname == 'weiba' && attrs.feedtype == 'weiba_post'){
			// 	var sid = attrs.curid;
			// }else{
			var sid = attrs.sid;
			//}
			var stable = attrs.stable;
			var initHTML = attrs.initHTML;
			var curtable =attrs.curtable;
			var curid = attrs.curid;
			var appname = attrs.appname;
			var cancomment = attrs.cancomment;
			var is_repost = attrs.is_repost;
			share(sid,stable,initHTML,curid,curtable,appname,cancomment,is_repost);
			return false;
		}
	},
	share_to_feed:{//分享操作
		load: function () {
			var attrs = M.getEventArgs(this);
			if (attrs.isLoad == 1) {
				var initHTML = attrs.initHTML;
				var attachId = attrs.attachId;
				var from = attrs.from;
				var appname = attrs.appname;
				var source_url = attrs.url;
				var url = U('public/Share/shareToFeed')+'&initHTML='+initHTML+'&attachId='+attachId+'&from='+from+'&appname='+appname+'&source_url='+source_url;
				ui.box.load(url,'分享');
			}
			return false;
		},
		click : function(){
			var attrs =M.getEventArgs(this);
			var initHTML = attrs.initHTML;
			var attachId = attrs.attachId;
			var from = attrs.from;
			var appname = attrs.appname;
			var source_url = attrs.url;
			var url = U('public/Share/shareToFeed')+'&initHTML='+initHTML+'&attachId='+attachId+'&from='+from+'&appname='+appname+'&source_url='+source_url;
			ui.box.load(url,'分享');
			return false;
		}
	},
	setremark:{	//设置备注
		click:function(){
			var remark = $(this).attr('remark');
			var uid = $(this).attr('uid');
			ui.box.load(U('widget/Remark/edit')+'&remark='+remark+'&uid='+uid,L('PUBLIC_EDIT_FOLLWING'));
		}
	},
	
	doFollow: {
		click: function() {
			follow.doFollow(this);
			return false;
		},
		load: function() {
			follow.createBtn(this);
		}
	},
	unFollow: {
		click: function() {
			follow.unFollow( this );
			return false;
		},
		load: function() {
			follow.createBtn( this );
		}
	},
	setFollowGroup:{
		click:function(){
			var args = M.getEventArgs(this);
			follow.setFollowGroup(this,args.fid);
		}
	},
	follow_check: {
		click: function( e ) {
			var check = this.getElementsByTagName( "input" )[0];
			setTimeout( function() {
				check.checked = !check.checked;
				check = undefined;
			}, 1);
			return false;
		}
	},
	comment:{	
		click:function(){	//点击评论的时候
			var attrs = M.getEventArgs(this);
			var comment_list = this.parentModel.childModels['comment_detail'][0];
			
//			if("undefined" == typeof(core.comment)){
//				core.plugInit('comment',attrs,comment_list);
//				core.setTimeout("core.comment.display()",150);
//			}else{
			
				core.comment.init(attrs,comment_list);
				core.comment.display();
//			}
			return false;
		}
	},
	reply_comment:{	//点某条回复
		click:function(){
			var attrs = M.getEventArgs(this);
			var comment_list = this.parentModel.parentModel;
			var docomment = comment_list.childModels['comment_textarea'][0].childEvents['do_comment'][0];
			$(docomment).attr('to_comment_id',attrs.to_comment_id);
			$(docomment).attr('to_uid',attrs.to_uid);
			$(docomment).attr('to_comment_uname',attrs.to_comment_uname);
			core.plugFunc('comment',function(){
				core.comment.init(attrs,comment_list);
				core.comment.initReply();
			});
			//core.plugInit('comment',attrs,comment_list);
			//core.setTimeout("core.comment.initReply()",150);
		}
	},
	comment_del:{
		click:function(){
			var attrs = M.getEventArgs(this);
			$(this.parentModel).fadeOut();
			if("undefined"==typeof(core.comment)){
				core.plugFunc('comment',function(){
					core.comment.delComment(attrs.comment_id);
				});
			}else{
				core.comment.delComment(attrs.comment_id);	
			}
		}
	},
	do_comment:{	//回复操作
		click:function(){
			if ( this.noreply == 1 ){
				return;
			}
			var attrs = M.getEventArgs(this);
			attrs.to_comment_id = $(this).attr('to_comment_id');
			attrs.to_uid = $(this).attr('to_uid');
			attrs.to_comment_uname = $(this).attr('to_comment_uname');
			attrs.addToEnd = $(this).attr('addtoend');
			
			var comment_list = this.parentModel.parentModel;
			core.comment.init(attrs,comment_list);

			var _this = this;
			var after = function(){
				$(_this).attr('to_uid','0');
				$(_this).attr('to_comment_id','0');
				$(_this).attr('to_comment_uname','');
				if(attrs.closeBox == 1){
					ui.box.close();
					ui.success( L('PUBLIC_CENTSUCCESS') );
				}
			}
			core.comment.addComment(after,this);
			this.noreply = 1;
			setTimeout(function (){
				_this.noreply = 0;
			},5000);
		},
		load:function(){
			var attrs = M.getEventArgs(this);
			attrs.to_comment_id = $(this).attr('to_comment_id');
			attrs.to_uid = $(this).attr('to_uid');
			attrs.to_comment_uname = $(this).attr('to_comment_uname');
			attrs.addToEnd = $(this).attr('addtoend');
			var comment_list = this.parentModel.parentModel;
			core.plugInit('comment',attrs,comment_list);
		}
	},
	comment_insert_face:{
		click:function(){
			var target = this.parentModel.childModels["mini_editor"][0];		
			var _faceDiv = this.parentModel.childModels['faceDiv'][0];
			core.plugInit('face',this,$(target).find('textarea'),_faceDiv);
		}
	},
	showCategory:{
		click:function(){
			var attrs = M.getEventArgs(this);
			//显示分类
			var obj = this;
			core.plugFunc('category',function(){
				core.category.loadSelect(obj,attrs.model_name,attrs.app_name,attrs.method,attrs.id,attrs.inputname,attrs.callback);
			});
		}
	}
});

//分享
var share=function(sid,stable,initHTML,curid,curtable,appname,cancomment,is_repost){	
	if("undefined" == typeof(cancomment)){
		cancomment = 0;
	}
	var url = U('public/Share/index')+'&sid='+sid+'&stable='+stable+'&curid='+curid+'&curtable='+curtable+'&appname='+appname+'&initHTML='+initHTML+'&cancomment='+cancomment+'&is_repost='+is_repost;
	if($('#tsbox').length>0){
		return false;
	}
	ui.box.load(url,L('PUBLIC_SHARE'),function(){
		$('#at-view').hide();
		var share_id="feed"+curid;
		window.location.hash=share_id;
	});
	return false;
};


var follow = {
	// 按钮样式
	btnClass: {
		doFollow: "btn-cancel",
		unFollow: "btn-att-white",
		haveFollow: "btn-att-white",
		eachFollow: "btn-att-white"
	},
	// 按钮图标
	flagClass: {
		doFollow: "ico-add-black",
		unFollow: "ico-minus-gray",
		haveFollow: "ico-already",
		eachFollow: "ico-connect"
	},
	// 按钮文字
	btnText: {
		doFollow: '关注',
		unFollow: L('PUBLIC_ERROR_FOLLOWING'),
		haveFollow: '已关注',
		eachFollow: '相互关注'
	},
	
	createBtn: function(node, btnType) {
		var args = M.getEventArgs(node);
		var btnType = (0 == args.following) ? "doFollow" : ((0 == args.follower) ? "haveFollow" : "eachFollow");
		var btnClass = this.btnClass[btnType];
		var flagClass = this.flagClass[btnType];
		var btnText = this.btnText[btnType];
		var btnHTML = ['<span><b class="', flagClass, '"></b>', btnText, '</span>'].join( "" );
		// 按钮节点添加HTML与样式
		node.innerHTML = btnHTML;
		node.className = btnClass;
		// 选择按钮类型
		switch(btnType) {
			case "haveFollow":
			case "eachFollow":
				$(node).bind({
					mouseover: function() {
						var b = this.getElementsByTagName( "b" )[0];
						var text = b.nextSibling;
						this.className = follow.btnClass.unFollow;
						b.className = follow.flagClass.unFollow;
						text.nodeValue = follow.btnText.unFollow;
					},
					mouseout: function() {
						var b = this.getElementsByTagName( "b" )[0];
						var text = b.nextSibling;
						this.className = btnClass;
						b.className = flagClass;
						text.nodeValue = btnText;
					}
				});
				break;
			default:
				$(node).unbind('mouseover');
				$(node).unbind('mouseout');
		}
	},
	
	doFollow: function(node) {
		var _this = this;
		var args = M.getEventArgs(node);
		var url = node.getAttribute("href") || U('public/Follow/doFollow');
		$.post(url, {fid:args.uid}, function(txt) {
			if(1 == txt.status ) {
				if("undefined" != typeof(core.facecard)){
					core.facecard.deleteUser(args.uid);
				}
				node.setAttribute("event-node", "unFollow");
				node.setAttribute("href", [U('public/Follow/unFollow'), '&fid=', args.uid].join(""));
				M.setEventArgs(node, ["uid=", args.uid, "&uname=", args.uname, "&following=", txt.data.following, "&follower=", txt.data.follower].join(""));
				M.removeListener(node);
				M(node);
				_this.updateFollowCount(1);
				updateUserData('follower_count', 1, args.uid);
				if("following_right" == args.refer) {
					var item = node.parentModel;
					// item.parentNode.removeChild(item);
					$(item).slideUp('normal', function() {
						$(this).remove();
					});
					$.post(U('widget/RelatedUser/changeRelate'), {uid:args.uid, limit:1}, function(msg) {
						var _model = M.getModels("related_list");
						$(_model[0]).append(msg);
						M(_model[0]);
					}, 'json');
					ui.success("关注成功");
				} else {
					followGroupSelectorBox(args.uid, args.isrefresh);
				}
			} else {
				ui.error(txt.info);
			}
		}, 'json');
	},
	
	setFollowGroup: function(node, fid) {
		var url = U('public/FollowGroup/selectorBox')+'&fid='+fid;
		ui.box.load(url, L('PUBLIC_SET_GROUP'));	
	},
	
	unFollow: function(node) {
		var _this = this;
		var args = M.getEventArgs(node);
		var url = node.getAttribute( "href" ) || U('public/Follow/unFollow');
		// 取消关注操作
		$.post(url, {fid:args.uid}, function(txt) {
			txt = eval( "(" + txt + ")" );
			if ( 1 == txt.status ) {
				ui.success( txt.info );
				if("undefined" != typeof(core.facecard) ){
					core.facecard.deleteUser(args.uid);
				}
				if ( "following_list" == args.refer ) {
					var item = node.parentModel;
					// 移除
					item.parentNode.removeChild( item );
				} else {					
					node.setAttribute( "event-node", "doFollow" );
					node.setAttribute( "href", [U('public/Follow/doFollow'), '&fid=', args.uid].join( "" ) );
					M.setEventArgs( node, ["uid=", args.uid, "&uname=", args.uname, "&following=", txt.data.following, "&follower=", txt.data.follower].join( "" ) );
					M.removeListener( node );
					M( node );
				}
				_this.updateFollowCount( - 1 );
				updateUserData('follower_count', -1, args.uid);
				if(args.isrefresh==1) location.reload();
			} else {
				ui.error( txt.info );
			}
		});
	},
	
	updateFollowCount: function(num) {
		var l;
		var following_count = M.getEvents("following_count");
		if(following_count) {
			l = following_count.length;
			while(l-- > 0) {
				following_count[l].innerHTML = parseInt(following_count[l].innerHTML) + num;
			}
		}
	}
};

var followGroupSelectorList = function(obj, fid)
{
	var x = obj.offset();
	// 获取数据列表
	$.post(U('public/FollowGroup/selectorList'), {fid:fid}, function(res) {
		if($('#followGroupList').length > 0) {
			if($('#followGroupList').attr('rel') == fid) {
				$('#followGroupList').remove();
			} else {
				$('#followGroupList').attr('rel', fid);
				$('#followGroupList').html(res);
			}
		} else {
			$('body').append('<div id="followGroupList" rel="' + fid + '" class="layer-follow-list">'+res+'</div>');
		}
		// 下拉定位
		$('#followGroupList').css({'left':x.left + 'px', 'top':x.top + obj.height() + 8 +'px', 'display':'block'});
		$('#followGroupSelector').find('label').hover(function() {
			$(this).addClass('hover');	
		}, function() {
			$(this).removeClass('hover');
		});
	});
};

var followGroupSelectorBox = function(fid, isrefresh)
{
	if(isrefresh==1){
		var r = 'location.reload();';
	}else{
		var r = '';
	}
	ui.box.load(U('public/FollowGroup/selectorBox')+'&fid='+fid+'&isrefresh='+isrefresh, L('PUBLIC_FOLLOWING_SUCCESS'), r);
};

var setFollowGroup = function(fid, isrefresh)
{
	if(isrefresh==1){
		var r = 'location.reload();';
	}else{
		var r = '';
	}
	ui.box.load(U('public/FollowGroup/selectorBox')+'&fid='+fid+'&isrefresh='+isrefresh, '设置分组', r);
};

var followGroupSelectorClose = function(fid)
{
	$('.followGroupStatus'+fid).hide();
	$('.followGroupStatus'+fid).html('');
};

var setFollowGroupTab = function(gid)
{
	var title = gid ? L('PUBLIC_EDIT_GROUP') : L('PUBLIC_CREATE_GROUP');
	gid = gid ? '&gid='+gid : '';
	ui.box.load(U('public/FollowGroup/setGroupTab') + gid, title);
};

;
(function(){
	jWidget = {
		version : '1.0.0',
		each : function(obj, fn){
			var i = 0, k, _fn = fn;	
			if (Object.prototype.toString.call(obj) === "[object Array]") {
				if (!!obj.forEach) {
					obj.forEach(fn);
				} else {
					var len = obj.length
					while (i < len) {
						_fn(obj[i], i, obj);
						++i;
					}
				}
			} else {
				for (k in obj) {
					_fn(obj[k], k, obj);
				}
			}
			return true;
		},
		extend : function(obj, ext) {
			if(obj && ext && typeof ext == 'object'){
				this.each(ext, function(v, k) {
					obj[k] = v;
				});
			}
		}
	};
	
	var _isW3cMode = document.defaultView && document.defaultView.getComputedStyle;
	
	jWidget.dom = {	
		get : function(e){
			if(typeof e == "string")
				return document.getElementById(e);
			return e;
		},
		
		
		getFirstChild : function(el) {
			el = this.get(el);
			var child = !!el.firstChild && el.firstChild.nodeType == 1 ? el.firstChild : null;
			return child || this.getNextSibling(el.firstChild);
		},
		
		
		getNextSibling : function(el) {
			el = this.get(el);
			while (el) {
				el = el.nextSibling;
				if (!!el && el.nodeType == 1) {
					return el;
				}
			}
			return null;
		},
		
	
		
		getChildren : function(el) {
			var _arr = [];
			var el = this.getFirstChild(el);
			while (el) {
				if (!!el && el.nodeType == 1) {
					_arr.push(el);
				}
				el = el.nextSibling;
			}	
			return _arr;
		},
		
		
		getSize : function(el) {
			var _fix = [0,0];
			if (el) {
				//修正 border 和 padding 对 getSize的影响
				jWidget.each(["Left", "Right", "Top", "Bottom"], function(v){ 
					_fix[v == "Left" || v == "Right" ? 0 : 1] += (parseInt(jWidget.dom.getStyle(el, "border" + v + "Width"), 10) || 0) + (parseInt(jWidget.dom.getStyle(el, "padding" + v), 10) || 0);
				});
				return [el.offsetWidth - _fix[0], el.offsetHeight - _fix[1]];
			}
			return [-1, -1];
		},
		
		
		getStyle : function(el, property) {
			el = this.get(el);
	
			if (!el || el.nodeType == 9) {
				return null;
			}
			
			var computed = !_isW3cMode ? null : document.defaultView.getComputedStyle(el, '');
			var value = "";
			switch (property) {
				case "float" :
					property = _isW3cMode ? "cssFloat" : "styleFloat";
					break;
				case "opacity" :
					if (!_isW3cMode) { // IE Mode
						var val = 100;
						try {
							val = el.filters['DXImageTransform.Microsoft.Alpha'].opacity;
						} catch (e) {
							try {
								val = el.filters('alpha').opacity;
							} catch (e) {}
						}
						return val / 100;
					}else{
						return parseFloat((computed || el.style)[property]);
					}
					break;
			}
	
			if (_isW3cMode) {
				return (computed || el.style)[property];
			} else {
				return (el.currentStyle[property] || el.style[property]);
			}
		},
		
		
		setStyle : function(el, property, value) {
			el = this.get(el);
			if (!el || el.nodeType == 9) return false;
			switch (property) {
				case "float" :
					property = _isW3cMode ? "cssFloat" : "styleFloat";
				case "opacity" :
					if (!_isW3cMode) { // for ie only
						if (value >= 1) {
							el.style.filter = "";
							return;
						}
						el.style.filter = 'alpha(opacity=' + (value * 100) + ')';
						return true;
					} else {
						el.style[property] = value;
						return true;
					}
					break;
				default :
					if (typeof el.style[property] == "undefined")return false;
					el.style[property] = value;
					return true;
			}
		},
		
		
		hasClass : function(el, cname) {
			return (el && cname) ? new RegExp('\\b' + cname + '\\b').test(el.className) : false;
		},
		
		
		addClass : function(el, cname) {
			if (el && cname) {
				if (el.className) {
					if (jWidget.dom.hasClass(el, cname)) {
						return false;
					} else {
						el.className += ' ' + cname;
					}
				} else {
					el.className = cname;
				}
				return true;
			}
			return false;
		},
	
		
		removeClass : function(el, cname) {
			if (el && cname && el.className) {
				var old = el.className;
				el.className = (el.className.replace(new RegExp('\\b' + cname + '\\b'), ''));
				return el.className != old;
			} else {
				return false;
			}
		}
	}	 
        
    jWidget.ui = jWidget.ui || {};
})();


;
(function(){	
	var $ = jWidget,
		$D = $.dom;	
	
	
	_Slide = function(conf) {
		conf = conf || {};	
		
		this.eventType = conf.eventType || 'mouseover' , 
		this.autoPlayInterval = conf.autoPlayInterval || 3 * 1000;
	
		this._play = true; 
		this._timer = null;	
		this._fadeTimer = null;
		this._container = $D.get(conf.container);
		this._panelWrapper = $D.get(conf.panelWrapper) || $D.getFirstChild(this._container);
		this._sliders = $D.getChildren(this._panelWrapper);
		this._navWrapper = $D.get(conf.navWrapper) || $D.getNextSibling(this._panelWrapper) || null;
		this._navs = (this._navWrapper && $D.getChildren(this._navWrapper)) || null;
		this._effect = conf.effect || 'scrollx';

		this._panelSize = (this._effect.indexOf("scrolly") == -1 ?  conf.width : conf.height) || $D.getSize($D.getFirstChild(this._panelWrapper))[this._effect.indexOf("scrolly") == -1 ? 0 : 1 ];

		
		//this._panelSize = (this._effect.indexOf("scrolly") == -1 ?  conf.width : conf.height) || $D.getSize(this._container)[this._effect.indexOf("scrolly") == -1 ? 0 : 1 ]; 
		this._count = conf.count || $D.getChildren(this._panelWrapper).length;
		this._navClassOn = conf.navClassOn || "on"; 	
		this._target = 0;	
		this._changeProperty  = this._effect.indexOf("scrolly") == -1 ? "left" : "top" ;	
		
		this.curIndex = 0;
		this.step = this._effect.indexOf("scroll") == -1 ? 1 : (conf.Step || 5);
		this.slideTime = conf.slideTime || 10;

		this.init();

		this.run(true);
	} 
	_Slide.prototype = {  
		init : function(){	
			$D.setStyle(this._container, "overflow", "hidden");
			$D.setStyle(this._container, "position", "relative");
			$D.setStyle(this._panelWrapper, "position", "relative");
			var _this = this;
			var tempData = [$D.getStyle(this._container,"width"),$D.getStyle(this._container,"height")];  //容器的宽度以及高度
			//alert($D.getStyle(this._container,"width"));
			if(this._effect.indexOf("scrolly") == -1){ 
				this._panelSize = this._container.offsetWidth;
				$D.setStyle(this._panelWrapper, "width", this._count * (this._panelSize+200) + "px");
				$.each(this._sliders,function(el){			
					el.style.styleFloat = el.style.cssFloat = "left";
					$D.getFirstChild($D.getFirstChild(el)).width = _this._panelSize;
				})
			}else{
				this._panelSize = this._container.offsetHeight;
				$.each(this._sliders,function(el){			
					$D.getFirstChild($D.getFirstChild(el)).width = _this._container.offsetWidth;
					$D.getFirstChild($D.getFirstChild(el)).height = _this._container.offsetHeight;
				})
			}
			
			
			if(this._navs){
    			if(_this.eventType == 'click'){  //onclick
    				$.each(this._navs, function(el, i){
    					el.onclick = (function(_this){return function(){
    						$D.addClass(el, _this._navClassOn);
    						_this._play = false;
    						_this.curIndex = i;
    						_this._play = true;
    						_this.run();
    					}})(_this)
    				})	
    			} else {  //onmouseover
    				$.each(this._navs, function(el, i){
    					el.onmouseover = (function(_this){return function(){
    						$D.addClass(el, _this._navClassOn);
    						_this._play = false;
    						_this.curIndex = i;
    						_this.run();
    					}})(_this)
    					el.onmouseout = (function(_this){return function(){
    						$D.removeClass(el, _this._navClassOn);
    						_this._play = true;
    						_this.run();
    					}})(_this)
    				})	
    			}	
			}
		},  
		
		run : function(isInit) {
			if(this.curIndex < 0){
				this.curIndex = this._count - 1;
			} else if (this.curIndex >= this._count){
				this.curIndex = 0; 
			}	
			var _this = this;
		
			this._target = -1 * this._panelSize * this.curIndex;


			if(this._navs){
    			$.each(this._navs, function(el, i){
    				_this.curIndex == (i) ? $D.addClass(el, _this._navClassOn) : $D.removeClass(el, _this._navClassOn);
    			})	
			}
			this.scroll();
			
			if(this._effect.indexOf("fade") >= 0){
				$D.setStyle(this._panelWrapper, "opacity", isInit ? 0.5 : 0.1);
				this.fade();
			}
		},
		
		scroll : function() {
			clearTimeout(this._timer);
			var _this = this, 
				_cur_property = parseInt(this._panelWrapper.style[this._changeProperty]) || 0, 
				_distance = (this._target - _cur_property) / this.step;
				//				alert(this._changeProperty);
				//alert(this._target);
				//alert(_cur_property);

			if (Math.abs(_distance) < 1 && _distance != 0) {
				_distance = _distance > 0 ? 1 : -1;
			}				
			if (_distance != 0) {
				this._panelWrapper.style[this._changeProperty] = (_cur_property + _distance) + "px";
				this._timer = setTimeout(function(){_this.scroll();}, this.slideTime);
			} else {
				this._panelWrapper.style[this._changeProperty] = this._target + "px";
				if (this._play) { 
					this._timer = setTimeout(function(){_this.curIndex++; _this.run();}, this.autoPlayInterval); 
				}
			}
		},
		
		fade : function() {
			var _opacity = $D.getStyle(this._panelWrapper, "opacity");
			var _this = this;
			if(_opacity < 1){
				$D.setStyle(this._panelWrapper, "opacity", parseFloat(_opacity) + 0.02);
				setTimeout(function(){_this.fade();}, 1);
			}
		}
	}
	
	jWidget.ui.SlideView = function(el, conf) {
		conf = conf || {};
		conf.container = el;
		return new _Slide(conf);	
	}
})();


;
(function(){	
	var $ = jWidget,
		$D = $.dom;	
	
	
	_Tab = function(conf) {		
		this.eventType = conf.eventType || 'mouseover', 
		this._container = conf.container;		 
        this._type = conf.type || "normal";         
        this._navClassOn = conf.navClassOn || "on"; 
        var _this = this;
        if(this._type == "list"){		
        	var cons = $D.getChildren(this._container);
        	this._panels = [];
            this._navs = [];    
            $.each(cons, function(el, i){
                if(i%2){
                    _this._panels.push(el);
                } else {
                    _this._navs.push(el);
                } 
            }) 
        }else{
            this._navWrapper = $D.get(conf.navWrapper) || $D.getFirstChild(this._container);
            this._navs = $D.getChildren(this._navWrapper);   
            this._panelWrapper = $D.get(conf.panelWrapper) || $D.getNextSibling(this._navWrapper);
            this._panels = $D.getChildren(this._panelWrapper);           
        }
                     
        this.curIndex = 0;  	
        $.each(this._panels, function(el, i){
            if(el.style.display != "none"){
                _this.curIndex = i;
            } 
        })

		this._panels[this.curIndex].style.display = '';
		this._panels[this.curIndex].style.display = '';
		$D.removeClass(this._navs[this.curIndex], this._navClassOn);
		$D.addClass(this._navs[this.curIndex], this._navClassOn);

		$.each(this._navs, function(el, i){
            el['on'+_this.eventType] = (function(_this){return function(){                  
                $D.removeClass(_this._navs[_this.curIndex], _this._navClassOn);
                _this._panels[_this.curIndex].style.display = 'none';
                _this.curIndex = i;                    
                $D.addClass(el, _this._navClassOn);
                _this._panels[_this.curIndex].style.display = '';
                try{QZFL.lazyLoad.loadHideImg(_this._panels[_this.curIndex])}catch(e){}//loadLoad隐藏的图片
            }})(_this)
        })
	}
	
	jWidget.ui.TabView = function(el, conf){
		conf = conf || {};
		conf.container = $D.get(el);
		return new _Tab(conf);
	}
})();
var keyname;

(function() {

  (function($) {
    var At, AtView, Mirror, log, _DEFAULT_TPL, _evalTpl, _highlighter, _isNil, _objectify, _sorter, _unique;
    Mirror = {
      $mirror: null,
      css: ["overflowY", "height", "width", "paddingTop", "paddingLeft", "paddingRight", "paddingBottom", "marginTop", "marginLeft", "marginRight", "marginBottom", 'fontFamily', 'borderStyle', 'borderWidth', 'wordWrap', 'fontSize', 'lineHeight', 'overflowX'],
      init: function($origin) {
        var $mirror, css;
        $mirror = $('<div></div>');
        css = {
          position: 'absolute',
          left: -9999,
          top: 0,
          zIndex: -20000,
          'white-space': 'pre-wrap'
        };
        $.each(this.css, function(i, p) {
          return css[p] = $origin.css(p);
        });
        $mirror.css(css);
        this.$mirror = $mirror;
        $origin.after($mirror);
        return this;
      },
      setContent: function(html) {
        this.$mirror.html(html);
        return this;
      },
      getFlagRect: function() {
        var $flag, pos, rect;
        $flag = this.$mirror.find("span#flag");
        pos = $flag.position();
        rect = {
          left: pos.left,
          top: pos.top,
          bottom: $flag.height() + pos.top
        };
        this.$mirror.remove();
        return rect;
      }
    };
    At = function(inputor) {
      var $inputor,
        _this = this;
      $inputor = this.$inputor = $(inputor);
      this.options = {};
      this.query = {
        text: "",
        start: 0,
        stop: 0
      };
      this._cache = {};
      this.pos = 0;
      this.flags = {};
      this.theflag = null;
      this.search_word = {};
      this.view = AtView;
      this.mirror = Mirror;
      $inputor.on("keyup.inputor", function(e) {
        var lookup, stop;
        stop = e.keyCode === 40 || e.keyCode === 38;
        lookup = !(stop && _this.view.isShowing());
        if (lookup) {
          return _this.lookup();
        }
      }).on("mouseup.inputor", function(e) {
        return _this.lookup();
      });
      this.init();
      log("At.new", $inputor[0]);
      return this;
    };
    At.prototype = {
      constructor: At,
      init: function() {
        var _this = this;
        this.$inputor.on('keydown.inputor', function(e) {
          return _this.onkeydown(e);
        }).on('scroll.inputor', function(e) {
          return _this.view.hide();
        }).on('blur.inputor', function(e) {
          return _this.view.hide(1000);
        });
        return log("At.init", this.$inputor[0]);
      },
      reg: function(flag, options) {
        var opt, _base, _default;
        opt = {};
        if ($.isFunction(options)) {
          opt['callback'] = options;
        } else {
          opt = options;
        }
        _default = (_base = this.options)[flag] || (_base[flag] = $.fn.atWho["default"]);
        this.options[flag] = $.extend({}, _default, opt);
        return log("At.reg", this.$inputor[0], flag, options);
      },
      dataValue: function() {
        var match, search_word;
        search_word = this.search_word[this.theflag];
        if (search_word) {
          return search_word;
        }
        match = /data-value=["']?\$\{(\w+)\}/g.exec(this.getOpt('tpl'));
        return this.search_word[this.theflag] = !_isNil(match) ? match[1] : null;
      },
      getOpt: function(key) {
        try {
          return this.options[this.theflag][key];
        } catch (error) {
          return null;
        }
      },
      rect: function() {
        var $inputor, Sel, at_rect, bottom, format, html, offset, start_range, x, y;
        $inputor = this.$inputor;
        if (document.selection) {
          Sel = document.selection.createRange();
          x = Sel.boundingLeft + $inputor.scrollLeft();
          y = Sel.boundingTop + $(window).scrollTop() + $inputor.scrollTop();
          bottom = y + Sel.boundingHeight;
          
          return {
            top: y - 13,
            left: x - 12,
            bottom: bottom
          };
        }
        format = function(value) {
          return value.replace(/</g, '&lt').replace(/>/g, '&gt').replace(/`/g, '&#96').replace(/"/g, '&quot').replace(/\r\n|\r|\n/g, "<br />");
        };
        

        start_range = $inputor.val().slice(0, this.pos - 1);
        html = "<span>" + format(start_range) + "</span>";
        html += "<span id='flag'>@</span>";
        

        offset = $inputor.offset();
        at_rect = this.mirror.init($inputor).setContent(html).getFlagRect();
        x = offset.left + at_rect.left - $inputor.scrollLeft();
        y = offset.top - $inputor.scrollTop();
        bottom = y + at_rect.bottom;
        y += at_rect.top;
        return {
          top: y,
          left: x,
          bottom: bottom + 2
        };
      },
      cache: function(value) {
        var key, _base;
        key = this.query.text;
        if (!this.getOpt("cache") || !key) {
          return null;
        }
        return (_base = this._cache)[key] || (_base[key] = value);
      },
      getKeyname: function() {
        var $inputor, caret_pos, end, key, matched, start, subtext, text,
          _this = this;
        $inputor = this.$inputor;
        text = $inputor.val();
        caret_pos = $inputor.caretPos();
        

        subtext = text.slice(0, caret_pos);
        matched = null;
        $.each(this.options, function(flag) {
          var match, regexp;
          regexp = new RegExp(flag + '([A-Za-z0-9_\+\-]*)$|' + flag + '([^\\x00-\\xff]*)$', 'gi');
          match = regexp.exec(subtext);
          if (!_isNil(match)) {
            matched = match[2] ? match[2] : match[1];
            _this.theflag = flag;
            return false;
          }
        });
        if (typeof matched === 'string' && matched.length <= 20) {
          start = caret_pos - matched.length;
          end = start + matched.length;
          this.pos = start;
          key = {
            'text': matched.toLowerCase(),
            'start': start,
            'end': end
          };
        } else {
          this.view.hide();
        }
        keyname = key;
        log("At.getKeyname", key);
        return this.query = key;
      },
      replaceStr: function(str) {
        var $inputor, flag_len, key, source, start_str, text;
        $inputor = this.$inputor;
        key = this.query;
        source = $inputor.val();
        flag_len = this.getOpt("display_flag") ? 0 : this.theflag.length;
        start_str = source.slice(0, key.start - flag_len);
        text = start_str + str + source.slice(key.end);
        $inputor.val(text);
        $inputor.caretPos(start_str.length + str.length);
        $inputor.change();
        return log("At.replaceStr", text);
      },
      onkeydown: function(e) {
        var view;
        view = this.view;
        if (!view.isShowing()) {
          return;
        }
        switch (e.keyCode) {
          case 38:
            e.preventDefault();
            view.prev();
            break;
          case 40:
            e.preventDefault();
            view.next();
            break;
          case 9:
          case 13:
            if (!view.isShowing()) {
              return;
            }
            e.preventDefault();
            view.choose();
            break;
          default:
            $.noop();
        }
        return e.stopPropagation();
      },
      renderView: function(datas) {
        log("At.renderView", this, datas);
        datas = datas.splice(0, this.getOpt('limit'));
        datas = _unique(datas, this.dataValue());
        datas = _objectify(datas);
        datas = _sorter.call(this, datas);
        return this.view.render(this, datas);
      },
      lookup: function() {
        var callback, datas, key;
        key = this.getKeyname();
        if (!key) {
          return false;
        }
        log("At.lookup.key", key);
        if (!_isNil(datas = this.cache())) {
          this.renderView(datas);
        } else if (!_isNil(datas = this.lookupWithData(key))) {
          this.renderView(datas);
        } else if ($.isFunction(callback = this.getOpt('callback'))) {
          callback(key.text, $.proxy(this.renderView, this));
        } else {
          this.view.hide();
        }
        return $.noop();
      },
      lookupWithData: function(key) {
        var data, items,
          _this = this;
        data = this.getOpt("data");
        if ($.isArray(data) && data.length !== 0) {
          items = $.map(data, function(item, i) {
            var match, name, regexp;
            try {
              name = $.isPlainObject(item) ? item[_this.dataValue()] : item;
              regexp = new RegExp(key.text.replace("+", "\\+"), 'i');
              match = name.match(regexp);
            } catch (e) {
              return null;
            }
            if (match) {
              return item;
            } else {
              return null;
            }
          });
        }
        return items;
      }
    };
    AtView = {
      timeout_id: null,
      id: '#at-view',
      holder: null,
      _jqo: null,
      jqo: function() {
        var jqo;
        jqo = this._jqo;
        return jqo = _isNil(jqo) ? (this._jqo = $(this.id)) : jqo;
      },
      init: function() {
        var $menu, tpl,
          _this = this;
        if (!_isNil(this.jqo())) {
          return;
        }
        tpl = "<div id='" + this.id.slice(1) + "' class='at-view'><ul id='" + this.id.slice(1) + "-ul'></ul></div>";
        $("body").append(tpl);
        $menu = this.jqo().find('ul');
        return $menu.on('mouseenter.view', 'li', function(e) {
          $menu.find('.cur').removeClass('cur');
          return $(e.currentTarget).addClass('cur');
        }).on('click', function(e) {
          e.stopPropagation();
          e.preventDefault();
          return _this.choose();
        });
      },
      isShowing: function() {
        return this.jqo().is(":visible");
      },
      choose: function() {
        var $li, str;
        $li = this.jqo().find(".cur");
        str = _isNil($li) ? this.holder.query.text + " " : $li.attr(this.holder.getOpt("input")) + " ";
        this.holder.replaceStr(str);
        return this.hide();
      },
      rePosition: function() {
        var rect;
        rect = this.holder.rect();
        if (rect.bottom + this.jqo().height() - $(window).scrollTop() > $(window).height()) {
          rect.bottom = rect.top - this.jqo().height();
        }
        log("AtView.rePosition", {
          left: rect.left,
          top: rect.bottom
        });
        return this.jqo().offset({
          left: rect.left,
          top: rect.bottom
        });
      },
      next: function() {
        var cur, next;
        cur = this.jqo().find('.cur').removeClass('cur');
        next = cur.next();
        if (!next.length) {
          next = $(this.jqo().find('li')[0]);
        }
        return next.addClass('cur');
      },
      prev: function() {
        var cur, prev;
        cur = this.jqo().find('.cur').removeClass('cur');
        prev = cur.prev();
        if (!prev.length) {
          prev = this.jqo().find('li').last();
        }
        return prev.addClass('cur');
      },
      show: function() {
        if (!this.isShowing()) {
          this.jqo().show();
        }
        return this.rePosition();
      },
      hide: function(time) {
        var callback,
          _this = this;
        if (isNaN(time)) {
          if (this.isShowing()) {
            return this.jqo().hide();
          }
        } else {
          callback = function() {
            return _this.hide();
          };
          clearTimeout(this.timeout_id);
          return this.timeout_id = setTimeout(callback, 300);
        }
      },
      clear: function(clear_all) {
        if (clear_all === true) {
          this._cache = {};
        }
        return this.jqo().find('ul').empty();
      },
      render: function(holder, list) {
        var $ul, tpl;
        if (!$.isArray(list)) {
          return false;
        }
        if (list.length <= 0) {
          this.hide();
          return true;
        }
        this.holder = holder;
        holder.cache(list);
        this.clear();
        $ul = this.jqo().find('ul');
        tpl = holder.getOpt('tpl');
        $.each(list, function(i, item) {
          var li;
          tpl || (tpl = _DEFAULT_TPL);
          li = _evalTpl(tpl, item);
          log("AtView.render", li);
          return $ul.append(_highlighter(li, holder.query.text));
        });
        this.show();
        return $ul.find("li:eq(0)").addClass("cur");
      }
    };
    _objectify = function(list) {
      return $.map(list, function(item, k) {
        if (!$.isPlainObject(item)) {
          item = {
            id: k,
            name: item
          };
        }
        return item;
      });
    };
    _evalTpl = function(tpl, map) {
      var el;
      try {
        return el = tpl.replace(/\$\{([^\}]*)\}/g, function(tag, key, pos) {
          return map[key];
        });
      } catch (error) {
        return "";
      }
    };
    _highlighter = function(li, query) {
      if (_isNil(query)) {
        return li;
      }
      return li.replace(new RegExp(">\\s*(\\w*)(" + query.replace("+", "\\+") + ")(\\w*)\\s*<", 'ig'), function(str, $1, $2, $3) {
        return '> ' + $1 + '<strong>' + $2 + '</strong>' + $3 + ' <';
      });
    };
    _sorter = function(items) {
      var data_value, item, query, results, text, _i, _len;
      data_value = this.dataValue();
      query = this.query.text;
      results = [];
      for (_i = 0, _len = items.length; _i < _len; _i++) {
        item = items[_i];
        text = item[data_value];
        if (text.toLowerCase().indexOf(query) === -1) {
          continue;
        }
        item.order = text.toLowerCase().indexOf(query);
        results.push(item);
      }
      results.sort(function(a, b) {
        return a.order - b.order;
      });
      return results;
    };
    

    _unique = function(list, query) {
      var record;
      record = [];
      return $.map(list, function(v, id) {
        var value;
        value = $.isPlainObject(v) ? v[query] : v;
        if ($.inArray(value, record) < 0) {
          record.push(value);
          return v;
        }
      });
    };
    _isNil = function(target) {
      return !target || ($.isPlainObject(target) && $.isEmptyObject(target)) || ($.isArray(target) && target.length === 0) || (target instanceof $ && target.length === 0) || target === void 0;
    };
    _DEFAULT_TPL = "<li id='${id}' data-value='${name}'>${name}</li>";
    log = function() {};
    $.fn.atWho = function(flag, options) {
      AtView.init();
      return this.filter('textarea, input').each(function() {
        var $this, data;
        $this = $(this);
        data = $this.data("AtWho");
        if (!data) {
          $this.data('AtWho', (data = new At(this)));
        }
        return data.reg(flag, options);
      });
    };
    return $.fn.atWho["default"] = {
      data: [],
      choose: "data-value",
      input:"input-value",
      callback: null,
      cache: true,
      limit: 10,
      display_flag: true,
      tpl: _DEFAULT_TPL
    };
  })(window.jQuery);

}).call(this);





(function() {

  (function($) {
    var getCaretPos, setCaretPos;
    getCaretPos = function(inputor) {
      var end, endRange, len, normalizedValue, pos, range, start, textInputRange;
      if (document.selection) {
        
        range = document.selection.createRange();
        pos = 0;
        if (range && range.parentElement() === inputor) {
          normalizedValue = inputor.value.replace(/\r\n/g, "\n");
          
          len = normalizedValue.length;
          
          textInputRange = inputor.createTextRange();
          
          textInputRange.moveToBookmark(range.getBookmark());
          endRange = inputor.createTextRange();
          
          endRange.collapse(false);
          
          if (textInputRange.compareEndPoints("StartToEnd", endRange) > -1) {
            start = end = len;
          } else {
            
            start = -textInputRange.moveStart("character", -len);
            end = -textInputRange.moveEnd("character", -len);
          }
        }
      } else {
        start = inputor.selectionStart;
      }
      return start;
    };
    setCaretPos = function(inputor, pos) {
      var range;
      if (document.selection) {
        range = inputor.createTextRange();
        range.move("character", pos);
        return range.select();
      } else {
        return inputor.setSelectionRange(pos, pos);
      }
    };
    return $.fn.caretPos = function(pos) {
      var inputor;
      inputor = this[0];
      inputor.focus();
      if (pos) {
        return setCaretPos(inputor, pos);
      } else {
        return getCaretPos(inputor);
      }
    };
  })(window.jQuery);

}).call(this);

;jQuery.ui || (function($) {

var _remove = $.fn.remove,
	isFF2 = $.browser.mozilla && (parseFloat($.browser.version) < 1.9);

//Helper functions and ui object
$.ui = {
	version: "1.7.2",

	// $.ui.plugin is deprecated.  Use the proxy pattern instead.
	plugin: {
		add: function(module, option, set) {
			var proto = $.ui[module].prototype;
			for(var i in set) {
				proto.plugins[i] = proto.plugins[i] || [];
				proto.plugins[i].push([option, set[i]]);
			}
		},
		call: function(instance, name, args) {
			var set = instance.plugins[name];
			if(!set || !instance.element[0].parentNode) { return; }

			for (var i = 0; i < set.length; i++) {
				if (instance.options[set[i][0]]) {
					set[i][1].apply(instance.element, args);
				}
			}
		}
	},

	contains: function(a, b) {
		return document.compareDocumentPosition
			? a.compareDocumentPosition(b) & 16
			: a !== b && a.contains(b);
	},

	hasScroll: function(el, a) {

		//If overflow is hidden, the element might have extra content, but the user wants to hide it
		if ($(el).css('overflow') == 'hidden') { return false; }

		var scroll = (a && a == 'left') ? 'scrollLeft' : 'scrollTop',
			has = false;

		if (el[scroll] > 0) { return true; }

		// TODO: determine which cases actually cause this to happen
		// if the element doesn't have the scroll set, see if it's possible to
		// set the scroll
		el[scroll] = 1;
		has = (el[scroll] > 0);
		el[scroll] = 0;
		return has;
	},

	isOverAxis: function(x, reference, size) {
		//Determines when x coordinate is over "b" element axis
		return (x > reference) && (x < (reference + size));
	},

	isOver: function(y, x, top, left, height, width) {
		//Determines when x, y coordinates is over "b" element
		return $.ui.isOverAxis(y, top, height) && $.ui.isOverAxis(x, left, width);
	},

	keyCode: {
		BACKSPACE: 8,
		CAPS_LOCK: 20,
		COMMA: 188,
		CONTROL: 17,
		DELETE: 46,
		DOWN: 40,
		END: 35,
		ENTER: 13,
		ESCAPE: 27,
		HOME: 36,
		INSERT: 45,
		LEFT: 37,
		NUMPAD_ADD: 107,
		NUMPAD_DECIMAL: 110,
		NUMPAD_DIVIDE: 111,
		NUMPAD_ENTER: 108,
		NUMPAD_MULTIPLY: 106,
		NUMPAD_SUBTRACT: 109,
		PAGE_DOWN: 34,
		PAGE_UP: 33,
		PERIOD: 190,
		RIGHT: 39,
		SHIFT: 16,
		SPACE: 32,
		TAB: 9,
		UP: 38
	}
};

// WAI-ARIA normalization
if (isFF2) {
	var attr = $.attr,
		removeAttr = $.fn.removeAttr,
		ariaNS = "http://www.w3.org/2005/07/aaa",
		ariaState = /^aria-/,
		ariaRole = /^wairole:/;

	$.attr = function(elem, name, value) {
		var set = value !== undefined;

		return (name == 'role'
			? (set
				? attr.call(this, elem, name, "wairole:" + value)
				: (attr.apply(this, arguments) || "").replace(ariaRole, ""))
			: (ariaState.test(name)
				? (set
					? elem.setAttributeNS(ariaNS,
						name.replace(ariaState, "aaa:"), value)
					: attr.call(this, elem, name.replace(ariaState, "aaa:")))
				: attr.apply(this, arguments)));
	};

	$.fn.removeAttr = function(name) {
		return (ariaState.test(name)
			? this.each(function() {
				this.removeAttributeNS(ariaNS, name.replace(ariaState, ""));
			}) : removeAttr.call(this, name));
	};
}

//jQuery plugins
$.fn.extend({
	remove: function() {
		// Safari has a native remove event which actually removes DOM elements,
		// so we have to use triggerHandler instead of trigger (#3037).
		$("*", this).add(this).each(function() {
			$(this).triggerHandler("remove");
		});
		return _remove.apply(this, arguments );
	},

	enableSelection: function() {
		return this
			.attr('unselectable', 'off')
			.css('MozUserSelect', '')
			.unbind('selectstart.ui');
	},

	disableSelection: function() {
		return this
			.attr('unselectable', 'on')
			.css('MozUserSelect', 'none')
			.bind('selectstart.ui', function() { return false; });
	},

	scrollParent: function() {
		var scrollParent;
		if(($.browser.msie && (/(static|relative)/).test(this.css('position'))) || (/absolute/).test(this.css('position'))) {
			scrollParent = this.parents().filter(function() {
				return (/(relative|absolute|fixed)/).test($.curCSS(this,'position',1)) && (/(auto|scroll)/).test($.curCSS(this,'overflow',1)+$.curCSS(this,'overflow-y',1)+$.curCSS(this,'overflow-x',1));
			}).eq(0);
		} else {
			scrollParent = this.parents().filter(function() {
				return (/(auto|scroll)/).test($.curCSS(this,'overflow',1)+$.curCSS(this,'overflow-y',1)+$.curCSS(this,'overflow-x',1));
			}).eq(0);
		}

		return (/fixed/).test(this.css('position')) || !scrollParent.length ? $(document) : scrollParent;
	}
});


//Additional selectors
$.extend($.expr[':'], {
	data: function(elem, i, match) {
		return !!$.data(elem, match[3]);
	},

	focusable: function(element) {
		var nodeName = element.nodeName.toLowerCase(),
			tabIndex = $.attr(element, 'tabindex');
		return (/input|select|textarea|button|object/.test(nodeName)
			? !element.disabled
			: 'a' == nodeName || 'area' == nodeName
				? element.href || !isNaN(tabIndex)
				: !isNaN(tabIndex))
			// the element and all of its ancestors must be visible
			// the browser may report that the area is hidden
			&& !$(element)['area' == nodeName ? 'parents' : 'closest'](':hidden').length;
	},

	tabbable: function(element) {
		var tabIndex = $.attr(element, 'tabindex');
		return (isNaN(tabIndex) || tabIndex >= 0) && $(element).is(':focusable');
	}
});


// $.widget is a factory to create jQuery plugins
// taking some boilerplate code out of the plugin code
function getter(namespace, plugin, method, args) {
	function getMethods(type) {
		var methods = $[namespace][plugin][type] || [];
		return (typeof methods == 'string' ? methods.split(/,?\s+/) : methods);
	}

	var methods = getMethods('getter');
	if (args.length == 1 && typeof args[0] == 'string') {
		methods = methods.concat(getMethods('getterSetter'));
	}
	return ($.inArray(method, methods) != -1);
}

$.widget = function(name, prototype) {
	var namespace = name.split(".")[0];
	name = name.split(".")[1];

	// create plugin method
	$.fn[name] = function(options) {
		var isMethodCall = (typeof options == 'string'),
			args = Array.prototype.slice.call(arguments, 1);

		// prevent calls to internal methods
		if (isMethodCall && options.substring(0, 1) == '_') {
			return this;
		}

		// handle getter methods
		if (isMethodCall && getter(namespace, name, options, args)) {
			var instance = $.data(this[0], name);
			return (instance ? instance[options].apply(instance, args)
				: undefined);
		}

		// handle initialization and non-getter methods
		return this.each(function() {
			var instance = $.data(this, name);

			// constructor
			(!instance && !isMethodCall &&
				$.data(this, name, new $[namespace][name](this, options))._init());

			// method call
			(instance && isMethodCall && $.isFunction(instance[options]) &&
				instance[options].apply(instance, args));
		});
	};

	// create widget constructor
	$[namespace] = $[namespace] || {};
	$[namespace][name] = function(element, options) {
		var self = this;

		this.namespace = namespace;
		this.widgetName = name;
		this.widgetEventPrefix = $[namespace][name].eventPrefix || name;
		this.widgetBaseClass = namespace + '-' + name;

		this.options = $.extend({},
			$.widget.defaults,
			$[namespace][name].defaults,
			$.metadata && $.metadata.get(element)[name],
			options);

		this.element = $(element)
			.bind('setData.' + name, function(event, key, value) {
				if (event.target == element) {
					return self._setData(key, value);
				}
			})
			.bind('getData.' + name, function(event, key) {
				if (event.target == element) {
					return self._getData(key);
				}
			})
			.bind('remove', function() {
				return self.destroy();
			});
	};

	// add widget prototype
	$[namespace][name].prototype = $.extend({}, $.widget.prototype, prototype);

	// TODO: merge getter and getterSetter properties from widget prototype
	// and plugin prototype
	$[namespace][name].getterSetter = 'option';
};

$.widget.prototype = {
	_init: function() {},
	destroy: function() {
		this.element.removeData(this.widgetName)
			.removeClass(this.widgetBaseClass + '-disabled' + ' ' + this.namespace + '-state-disabled')
			.removeAttr('aria-disabled');
	},

	option: function(key, value) {
		var options = key,
			self = this;

		if (typeof key == "string") {
			if (value === undefined) {
				return this._getData(key);
			}
			options = {};
			options[key] = value;
		}

		$.each(options, function(key, value) {
			self._setData(key, value);
		});
	},
	_getData: function(key) {
		return this.options[key];
	},
	_setData: function(key, value) {
		this.options[key] = value;

		if (key == 'disabled') {
			this.element
				[value ? 'addClass' : 'removeClass'](
					this.widgetBaseClass + '-disabled' + ' ' +
					this.namespace + '-state-disabled')
				.attr("aria-disabled", value);
		}
	},

	enable: function() {
		this._setData('disabled', false);
	},
	disable: function() {
		this._setData('disabled', true);
	},

	_trigger: function(type, event, data) {
		var callback = this.options[type],
			eventName = (type == this.widgetEventPrefix
				? type : this.widgetEventPrefix + type);

		event = $.Event(event);
		event.type = eventName;

		// copy original event properties over to the new event
		// this would happen if we could call $.event.fix instead of $.Event
		// but we don't have a way to force an event to be fixed multiple times
		if (event.originalEvent) {
			for (var i = $.event.props.length, prop; i;) {
				prop = $.event.props[--i];
				event[prop] = event.originalEvent[prop];
			}
		}

		this.element.trigger(event, data);

		return !($.isFunction(callback) && callback.call(this.element[0], event, data) === false
			|| event.isDefaultPrevented());
	}
};

$.widget.defaults = {
	disabled: false
};




$.ui.mouse = {
	_mouseInit: function() {
		var self = this;

		this.element
			.bind('mousedown.'+this.widgetName, function(event) {
				return self._mouseDown(event);
			})
			.bind('click.'+this.widgetName, function(event) {
				if(self._preventClickEvent) {
					self._preventClickEvent = false;
					event.stopImmediatePropagation();
					return false;
				}
			});

		// Prevent text selection in IE
		if ($.browser.msie) {
			this._mouseUnselectable = this.element.attr('unselectable');
			this.element.attr('unselectable', 'on');
		}

		this.started = false;
	},

	// TODO: make sure destroying one instance of mouse doesn't mess with
	// other instances of mouse
	_mouseDestroy: function() {
		this.element.unbind('.'+this.widgetName);

		// Restore text selection in IE
		($.browser.msie
			&& this.element.attr('unselectable', this._mouseUnselectable));
	},

	_mouseDown: function(event) {
		// don't let more than one widget handle mouseStart
		// TODO: figure out why we have to use originalEvent
		event.originalEvent = event.originalEvent || {};
		if (event.originalEvent.mouseHandled) { return; }

		// we may have missed mouseup (out of window)
		(this._mouseStarted && this._mouseUp(event));

		this._mouseDownEvent = event;

		var self = this,
			btnIsLeft = (event.which == 1),
			elIsCancel = (typeof this.options.cancel == "string" ? $(event.target).parents().add(event.target).filter(this.options.cancel).length : false);
		if (!btnIsLeft || elIsCancel || !this._mouseCapture(event)) {
			return true;
		}

		this.mouseDelayMet = !this.options.delay;
		if (!this.mouseDelayMet) {
			this._mouseDelayTimer = setTimeout(function() {
				self.mouseDelayMet = true;
			}, this.options.delay);
		}

		if (this._mouseDistanceMet(event) && this._mouseDelayMet(event)) {
			this._mouseStarted = (this._mouseStart(event) !== false);
			if (!this._mouseStarted) {
				event.preventDefault();
				return true;
			}
		}

		// these delegates are required to keep context
		this._mouseMoveDelegate = function(event) {
			return self._mouseMove(event);
		};
		this._mouseUpDelegate = function(event) {
			return self._mouseUp(event);
		};
		$(document)
			.bind('mousemove.'+this.widgetName, this._mouseMoveDelegate)
			.bind('mouseup.'+this.widgetName, this._mouseUpDelegate);

		// preventDefault() is used to prevent the selection of text here -
		// however, in Safari, this causes select boxes not to be selectable
		// anymore, so this fix is needed
		($.browser.safari || event.preventDefault());

		event.originalEvent.mouseHandled = true;
		return true;
	},

	_mouseMove: function(event) {
		// IE mouseup check - mouseup happened when mouse was out of window
		if ($.browser.msie && !event.button) {
			return this._mouseUp(event);
		}

		if (this._mouseStarted) {
			this._mouseDrag(event);
			return event.preventDefault();
		}

		if (this._mouseDistanceMet(event) && this._mouseDelayMet(event)) {
			this._mouseStarted =
				(this._mouseStart(this._mouseDownEvent, event) !== false);
			(this._mouseStarted ? this._mouseDrag(event) : this._mouseUp(event));
		}

		return !this._mouseStarted;
	},

	_mouseUp: function(event) {
		$(document)
			.unbind('mousemove.'+this.widgetName, this._mouseMoveDelegate)
			.unbind('mouseup.'+this.widgetName, this._mouseUpDelegate);

		if (this._mouseStarted) {
			this._mouseStarted = false;
			this._preventClickEvent = (event.target == this._mouseDownEvent.target);
			this._mouseStop(event);
		}

		return false;
	},

	_mouseDistanceMet: function(event) {
		return (Math.max(
				Math.abs(this._mouseDownEvent.pageX - event.pageX),
				Math.abs(this._mouseDownEvent.pageY - event.pageY)
			) >= this.options.distance
		);
	},

	_mouseDelayMet: function(event) {
		return this.mouseDelayMet;
	},

	// These are placeholder methods, to be overriden by extending plugin
	_mouseStart: function(event) {},
	_mouseDrag: function(event) {},
	_mouseStop: function(event) {},
	_mouseCapture: function(event) { return true; }
};

$.ui.mouse.defaults = {
	cancel: null,
	distance: 1,
	delay: 0
};

})(jQuery);

(function($){

    $.widget("ui.draggable", $.extend({}, $.ui.mouse, {
    
        _init: function(){
            if (this.options.helper == 'original' && !(/^(?:r|a|f)/).test(this.element.css("position"))) 
                this.element[0].style.position = 'relative';
            
            (this.options.addClasses && this.element.addClass("ui-draggable"));
            (this.options.disabled && this.element.addClass("ui-draggable-disabled"));
            
            this._mouseInit();
            
        },
        
        destroy: function(){
            if (!this.element.data('draggable')) 
                return;
            this.element.removeData("draggable").unbind(".draggable").removeClass("ui-draggable" +
            " ui-draggable-dragging" +
            " ui-draggable-disabled");
            this._mouseDestroy();
        },
        
        _mouseCapture: function(event){
        
            var o = this.options;
            
            if (this.helper || o.disabled || $(event.target).is('.ui-resizable-handle')) 
                return false;
            
            //Quit if we're not on a valid handle
            this.handle = this._getHandle(event);
            if (!this.handle) 
                return false;
            
            return true;
            
        },
        
        _mouseStart: function(event){
        
            var o = this.options;
            
            //Create and append the visible helper
            this.helper = this._createHelper(event);
            
            //Cache the helper size
            this._cacheHelperProportions();
            
            //If ddmanager is used for droppables, set the global draggable
            if ($.ui.ddmanager) 
                $.ui.ddmanager.current = this;
            
            
            //Cache the margins of the original element
            this._cacheMargins();
            
            //Store the helper's css position
            this.cssPosition = this.helper.css("position");
            this.scrollParent = this.helper.scrollParent();
            
            //The element's absolute position on the page minus margins
            this.offset = this.element.offset();
            this.offset = {
                top: this.offset.top - this.margins.top,
                left: this.offset.left - this.margins.left
            };
            
            $.extend(this.offset, {
                click: { //Where the click happened, relative to the element
                    left: event.pageX - this.offset.left,
                    top: event.pageY - this.offset.top
                },
                parent: this._getParentOffset(),
                relative: this._getRelativeOffset() //This is a relative to absolute position minus the actual position calculation - only used for relative positioned helper
            });
            
            //Generate the original position
            this.originalPosition = this._generatePosition(event);
            this.originalPageX = event.pageX;
            this.originalPageY = event.pageY;
            
            //Adjust the mouse offset relative to the helper if 'cursorAt' is supplied
            if (o.cursorAt) 
                this._adjustOffsetFromHelper(o.cursorAt);
            
            //Set a containment if given in the options
            if (o.containment) 
                this._setContainment();
            
            //Call plugins and callbacks
            this._trigger("start", event);
            
            //Recache the helper size
            this._cacheHelperProportions();
            
            //Prepare the droppable offsets
            if ($.ui.ddmanager && !o.dropBehaviour) 
                $.ui.ddmanager.prepareOffsets(this, event);
            
            this.helper.addClass("ui-draggable-dragging");
            this._mouseDrag(event, true); //Execute the drag once - this causes the helper not to be visible before getting its correct position
            return true;
        },
        
        _mouseDrag: function(event, noPropagation){
        
            //Compute the helpers position
            this.position = this._generatePosition(event);
            this.positionAbs = this._convertPositionTo("absolute");
            
            //Call plugins and callbacks and use the resulting position if something is returned
            if (!noPropagation) {
                var ui = this._uiHash();
                this._trigger('drag', event, ui);
                this.position = ui.position;
            }
            
            if (!this.options.axis || this.options.axis != "y") 
                this.helper[0].style.left = this.position.left + 'px';
            if (!this.options.axis || this.options.axis != "x") 
                this.helper[0].style.top = this.position.top + 'px';
            if ($.ui.ddmanager) 
                $.ui.ddmanager.drag(this, event);
            
            return false;
        },
        
        _mouseStop: function(event){
        
            //If we are using droppables, inform the manager about the drop
            var dropped = false;
            if ($.ui.ddmanager && !this.options.dropBehaviour) 
                dropped = $.ui.ddmanager.drop(this, event);
            
            //if a drop comes from outside (a sortable)
            if (this.dropped) {
                dropped = this.dropped;
                this.dropped = false;
            }
            
            if ((this.options.revert == "invalid" && !dropped) || (this.options.revert == "valid" && dropped) || this.options.revert === true || ($.isFunction(this.options.revert) && this.options.revert.call(this.element, dropped))) {
                var self = this;
                $(this.helper).animate(this.originalPosition, parseInt(this.options.revertDuration, 10), function(){
                    self._trigger("stop", event);
                    self._clear();
                });
            }
            else {
                this._trigger("stop", event);
                this._clear();
            }
            return false;
        },
        
        _getHandle: function(event){
        
            var handle = !this.options.handle || !$(this.options.handle, this.element).length ? true : false;
            $(this.options.handle, this.element).find("*").andSelf().each(function(){
                if (this == event.target) 
                    handle = true;
            });
            
            return handle;
            
        },
        
        _createHelper: function(event){
            var o = this.options;
            var helper = $.isFunction(o.helper) ? $(o.helper.apply(this.element[0], [event])) : (o.helper == 'clone' ? this.element.clone() : this.element);
            
            if (!helper.parents('body').length) 
                helper.appendTo((o.appendTo == 'parent' ? this.element[0].parentNode : o.appendTo));
            
            if (helper[0] != this.element[0] && !(/(fixed|absolute)/).test(helper.css("position"))) 
                helper.css("position", "absolute");
            return helper;
            
        },
        
        _adjustOffsetFromHelper: function(obj){
            if (obj.left != undefined) 
                this.offset.click.left = obj.left + this.margins.left;
            if (obj.right != undefined) 
                this.offset.click.left = this.helperProportions.width - obj.right + this.margins.left;
            if (obj.top != undefined) 
                this.offset.click.top = obj.top + this.margins.top;
            if (obj.bottom != undefined) 
                this.offset.click.top = this.helperProportions.height - obj.bottom + this.margins.top;
        },
        
        _getParentOffset: function(){
        
            //Get the offsetParent and cache its position
            this.offsetParent = this.helper.offsetParent();
            var po = this.offsetParent.offset();
            
            // This is a special case where we need to modify a offset calculated on start, since the following happened:
            // 1. The position of the helper is absolute, so it's position is calculated based on the next positioned parent
            // 2. The actual offset parent is a child of the scroll parent, and the scroll parent isn't the document, which means that
            //    the scroll is included in the initial calculation of the offset of the parent, and never recalculated upon drag
            if (this.cssPosition == 'absolute' && this.scrollParent[0] != document && $.ui.contains(this.scrollParent[0], this.offsetParent[0])) {
                po.left += this.scrollParent.scrollLeft();
                po.top += this.scrollParent.scrollTop();
            }
            
            if ((this.offsetParent[0] == document.body) //This needs to be actually done for all browsers, since pageX/pageY includes this information
 ||
            (this.offsetParent[0].tagName && this.offsetParent[0].tagName.toLowerCase() == 'html' && $.browser.msie)) //Ugly IE fix
                po = {
                    top: 0,
                    left: 0
                };
            
            return {
                top: po.top + (parseInt(this.offsetParent.css("borderTopWidth"), 10) || 0),
                left: po.left + (parseInt(this.offsetParent.css("borderLeftWidth"), 10) || 0)
            };
            
        },
        
        _getRelativeOffset: function(){
        
            if (this.cssPosition == "relative") {
                var p = this.element.position();
                return {
                    top: p.top - (parseInt(this.helper.css("top"), 10) || 0) + this.scrollParent.scrollTop(),
                    left: p.left - (parseInt(this.helper.css("left"), 10) || 0) + this.scrollParent.scrollLeft()
                };
            }
            else {
                return {
                    top: 0,
                    left: 0
                };
            }
            
        },
        
        _cacheMargins: function(){
            this.margins = {
                left: (parseInt(this.element.css("marginLeft"), 10) || 0),
                top: (parseInt(this.element.css("marginTop"), 10) || 0)
            };
        },
        
        _cacheHelperProportions: function(){
            this.helperProportions = {
                width: this.helper.outerWidth(),
                height: this.helper.outerHeight()
            };
        },
        
        _setContainment: function(){
        
            var o = this.options;
            if (o.containment == 'parent') 
                o.containment = this.helper[0].parentNode;
            if (o.containment == 'document' || o.containment == 'window') 
                this.containment = [0 - this.offset.relative.left - this.offset.parent.left, 0 - this.offset.relative.top - this.offset.parent.top, $(o.containment == 'document' ? document : window).width() - this.helperProportions.width - this.margins.left, ($(o.containment == 'document' ? document : window).height() || document.body.parentNode.scrollHeight) - this.helperProportions.height - this.margins.top];
            
            if (!(/^(document|window|parent)$/).test(o.containment) && o.containment.constructor != Array) {
                var ce = $(o.containment)[0];
                if (!ce) 
                    return;
                var co = $(o.containment).offset();
                var over = ($(ce).css("overflow") != 'hidden');
                
                this.containment = [co.left + (parseInt($(ce).css("borderLeftWidth"), 10) || 0) + (parseInt($(ce).css("paddingLeft"), 10) || 0) - this.margins.left, co.top + (parseInt($(ce).css("borderTopWidth"), 10) || 0) + (parseInt($(ce).css("paddingTop"), 10) || 0) - this.margins.top, co.left + (over ? Math.max(ce.scrollWidth, ce.offsetWidth) : ce.offsetWidth) - (parseInt($(ce).css("borderLeftWidth"), 10) || 0) - (parseInt($(ce).css("paddingRight"), 10) || 0) - this.helperProportions.width - this.margins.left, co.top + (over ? Math.max(ce.scrollHeight, ce.offsetHeight) : ce.offsetHeight) - (parseInt($(ce).css("borderTopWidth"), 10) || 0) - (parseInt($(ce).css("paddingBottom"), 10) || 0) - this.helperProportions.height - this.margins.top];
            }
            else 
                if (o.containment.constructor == Array) {
                    this.containment = o.containment;
                }
            
        },
        
        _convertPositionTo: function(d, pos){
        
            if (!pos) 
                pos = this.position;
            var mod = d == "absolute" ? 1 : -1;
            var o = this.options, scroll = this.cssPosition == 'absolute' && !(this.scrollParent[0] != document && $.ui.contains(this.scrollParent[0], this.offsetParent[0])) ? this.offsetParent : this.scrollParent, scrollIsRootNode = (/(html|body)/i).test(scroll[0].tagName);
            
            return {
                top: (pos.top // The absolute mouse position
 +
                this.offset.relative.top * mod // Only for relative positioned nodes: Relative offset from element to offset parent
 +
                this.offset.parent.top * mod // The offsetParent's offset without borders (offset + border)
 -
                ($.browser.safari && this.cssPosition == 'fixed' ? 0 : (this.cssPosition == 'fixed' ? -this.scrollParent.scrollTop() : (scrollIsRootNode ? 0 : scroll.scrollTop())) * mod)),
                left: (pos.left // The absolute mouse position
 +
                this.offset.relative.left * mod // Only for relative positioned nodes: Relative offset from element to offset parent
 +
                this.offset.parent.left * mod // The offsetParent's offset without borders (offset + border)
 -
                ($.browser.safari && this.cssPosition == 'fixed' ? 0 : (this.cssPosition == 'fixed' ? -this.scrollParent.scrollLeft() : scrollIsRootNode ? 0 : scroll.scrollLeft()) * mod))
            };
            
        },
        
        _generatePosition: function(event){
        
            var o = this.options, scroll = this.cssPosition == 'absolute' && !(this.scrollParent[0] != document && $.ui.contains(this.scrollParent[0], this.offsetParent[0])) ? this.offsetParent : this.scrollParent, scrollIsRootNode = (/(html|body)/i).test(scroll[0].tagName);
            
            // This is another very weird special case that only happens for relative elements:
            // 1. If the css position is relative
            // 2. and the scroll parent is the document or similar to the offset parent
            // we have to refresh the relative offset during the scroll so there are no jumps
            if (this.cssPosition == 'relative' && !(this.scrollParent[0] != document && this.scrollParent[0] != this.offsetParent[0])) {
                this.offset.relative = this._getRelativeOffset();
            }
            
            var pageX = event.pageX;
            var pageY = event.pageY;
            
            
            if (this.originalPosition) { //If we are not dragging yet, we won't check for options
                if (this.containment) {
                    if (event.pageX - this.offset.click.left < this.containment[0]) 
                        pageX = this.containment[0] + this.offset.click.left;
                    if (event.pageY - this.offset.click.top < this.containment[1]) 
                        pageY = this.containment[1] + this.offset.click.top;
                    if (event.pageX - this.offset.click.left > this.containment[2]) 
                        pageX = this.containment[2] + this.offset.click.left;
                    if (event.pageY - this.offset.click.top > this.containment[3]) 
                        pageY = this.containment[3] + this.offset.click.top;
                }
                
                if (o.grid) {
                    var top = this.originalPageY + Math.round((pageY - this.originalPageY) / o.grid[1]) * o.grid[1];
                    pageY = this.containment ? (!(top - this.offset.click.top < this.containment[1] || top - this.offset.click.top > this.containment[3]) ? top : (!(top - this.offset.click.top < this.containment[1]) ? top - o.grid[1] : top + o.grid[1])) : top;
                    
                    var left = this.originalPageX + Math.round((pageX - this.originalPageX) / o.grid[0]) * o.grid[0];
                    pageX = this.containment ? (!(left - this.offset.click.left < this.containment[0] || left - this.offset.click.left > this.containment[2]) ? left : (!(left - this.offset.click.left < this.containment[0]) ? left - o.grid[0] : left + o.grid[0])) : left;
                }
                
            }
            
            return {
                top: (pageY // The absolute mouse position
 -
                this.offset.click.top // Click offset (relative to the element)
 -
                this.offset.relative.top // Only for relative positioned nodes: Relative offset from element to offset parent
 -
                this.offset.parent.top // The offsetParent's offset without borders (offset + border)
 +
                ($.browser.safari && this.cssPosition == 'fixed' ? 0 : (this.cssPosition == 'fixed' ? -this.scrollParent.scrollTop() : (scrollIsRootNode ? 0 : scroll.scrollTop())))),
                left: (pageX // The absolute mouse position
 -
                this.offset.click.left // Click offset (relative to the element)
 -
                this.offset.relative.left // Only for relative positioned nodes: Relative offset from element to offset parent
 -
                this.offset.parent.left // The offsetParent's offset without borders (offset + border)
 +
                ($.browser.safari && this.cssPosition == 'fixed' ? 0 : (this.cssPosition == 'fixed' ? -this.scrollParent.scrollLeft() : scrollIsRootNode ? 0 : scroll.scrollLeft())))
            };
            
        },
        
        _clear: function(){
            this.helper.removeClass("ui-draggable-dragging");
            if (this.helper[0] != this.element[0] && !this.cancelHelperRemoval) 
                this.helper.remove();
            //if($.ui.ddmanager) $.ui.ddmanager.current = null;
            this.helper = null;
            this.cancelHelperRemoval = false;
        },
        
        // From now on bulk stuff - mainly helpers
        
        _trigger: function(type, event, ui){
            ui = ui || this._uiHash();
            $.ui.plugin.call(this, type, [event, ui]);
            if (type == "drag") 
                this.positionAbs = this._convertPositionTo("absolute"); //The absolute position has to be recalculated after plugins
            return $.widget.prototype._trigger.call(this, type, event, ui);
        },
        
        plugins: {},
        
        _uiHash: function(event){
            return {
                helper: this.helper,
                position: this.position,
                absolutePosition: this.positionAbs, //deprecated
                offset: this.positionAbs
            };
        }
        
    }));
    
    $.extend($.ui.draggable, {
        version: "1.7.2",
        eventPrefix: "drag",
        defaults: {
            addClasses: true,
            appendTo: "parent",
            axis: false,
            cancel: ":input,option",
            connectToSortable: false,
            containment: false,
            cursor: "auto",
            cursorAt: false,
            delay: 0,
            distance: 1,
            grid: false,
            handle: false,
            helper: "original",
            iframeFix: false,
            opacity: false,
            refreshPositions: false,
            revert: false,
            revertDuration: 500,
            scope: "default",
            scroll: true,
            scrollSensitivity: 20,
            scrollSpeed: 20,
            snap: false,
            snapMode: "both",
            snapTolerance: 20,
            stack: false,
            zIndex: false,
            dragItem: false
        }
    });
    
    $.ui.plugin.add("draggable", "connectToSortable", {
        start: function(event, ui){
        
            var inst = $(this).data("draggable"), o = inst.options, uiSortable = $.extend({}, ui, {
                item: inst.element
            });
            inst.sortables = [];
            $(o.connectToSortable).each(function(){
                var sortable = $.data(this, 'sortable');
                if (sortable && !sortable.options.disabled) {
                    inst.sortables.push({
                        instance: sortable,
                        shouldRevert: sortable.options.revert
                    });
                    sortable._refreshItems(); //Do a one-time refresh at start to refresh the containerCache
                    sortable._trigger("activate", event, uiSortable);
                }
            });
            
        },
        stop: function(event, ui){
        
            //If we are still over the sortable, we fake the stop event of the sortable, but also remove helper
            var inst = $(this).data("draggable"), uiSortable = $.extend({}, ui, {
                item: inst.element
            }), self = $(this);
            $.each(inst.sortables, function(){
                if (this.instance.isOver) {
                    var index = 0;
                    var parentId = this.instance.element.parent().attr('id');
                    var namespace = $(self).attr('namespace');
                    //判断父级是否是DIY框架，如果等于 body-bg表示框架
                    //具体判断按照 diy_content 的父级而定
                    if (parentId !== "" && parentId != "body-bg") {
                        var classs = this.instance.element.attr('class'), classes = classs.split(' '), needClass = classes.shift(),gid=$(self).attr('rel');
                        if (typeof(frameArray[parentId][needClass]) == "object") {
                            index = frameArray[parentId][needClass].push("0");
                        }
                        else {
                            frameArray[parentId][needClass] = new Array;
                            index = frameArray[parentId][needClass].push("0");
                        }
                        $.tbox.popup(SITE_URL + "/index.php?app=page&mod=Diy&act=getPopUp&gid="+gid+"&tagName=" + namespace + "&index=" + (index - 1) + "&parentId=" + parentId + "&needClass=" + needClass + "&id=" + parentId + "-" + needClass + "-" + index, "添加模块", false, false, {
                            "closed": function(){
                                $('#placeholder').remove();
                            }
                        });
                        
                        
                        var button = '<p><input class="btn_sea" id="savemodel"  name="" type="button" value="确定" /><input class="btn_sea_n ml5" name="" id="preview_button" type="button" value="预览"/></p>';
                        $('#tbox .tb_button_list').show().html(button);
                        $('#preview_button').click(function(){
                            preview();
                            
                        });
                        $('#savemodel').click(function(){
                            savemodel();
                            $.tbox.close();
                            
                        });
                        
                    }
                    this.instance.isOver = 0;
                    inst.cancelHelperRemoval = true; //Don't remove the helper in the draggable instance
                    this.instance.cancelHelperRemoval = false; //Remove it in the sortable instance (so sortable plugins like revert still work)
                    //The sortable revert is supported, and we have to set a temporary dropped variable on the draggable to support revert: 'valid/invalid'
                    if (this.shouldRevert) 
                        this.instance.options.revert = true;
                    
                    //Trigger the stop of the sortable
                    this.instance._mouseStop(event);
                    
                    this.instance.options.helper = this.instance.options._helper;
                    
                    //If the helper has been the original item, restore properties in the sortable
                    if (inst.options.helper == 'original') 
                        this.instance.currentItem.css({
                            top: 'auto',
                            left: 'auto'
                        });
                    
                }
                else {
                    this.instance.cancelHelperRemoval = false; //Remove the helper in the sortable instance
                    this.instance._trigger("deactivate", event, uiSortable);
                }
                
            });
            
        },
        drag: function(event, ui){
        
            var inst = $(this).data("draggable"), self = this;
            var checkPos = function(o){
                var dyClick = this.offset.click.top, dxClick = this.offset.click.left;
                var helperTop = this.positionAbs.top, helperLeft = this.positionAbs.left;
                var itemHeight = o.height, itemWidth = o.width;
                var itemTop = o.top, itemLeft = o.left;
                
                return $.ui.isOver(helperTop + dyClick, helperLeft + dxClick, itemTop, itemLeft, itemHeight, itemWidth);
            };
            $.each(inst.sortables, function(i){
                var myInstance;
                var newId;
                
                //Copy over some variables to allow calling the sortable's native _intersectsWith
                this.instance.positionAbs = inst.positionAbs;
                this.instance.helperProportions = inst.helperProportions;
                this.instance.offset.click = inst.offset.click;
                
                if (this.instance._intersectsWith(this.instance.containerCache)) {
                
                    //If it intersects, we use a little isOver variable and set it once, so our move-in stuff gets fired only once
                    
                    if (!this.instance.isOver) {
                        //for (var test in inst.options.dragItem) {
                        var needClass = $(self).attr('class');
                        needClass = needClass.split(' ');
                        switch (needClass.shift()) {
                            case "addFrame":
                                frameCount++;
                                newId = $(self).attr('rel') + "F" + frameCount;
                                
                                var tempFrameTemplate = inst.options.dragItem[$(self).attr('rel')].clone();
                                
                                frameArray[newId] = new Array();
                                frameArray[newId]['html'] = tempFrameTemplate.html().replace(/(\s+)line_D_R/g, '');
                                
                                myInstance = inst.options.dragItem[$(self).attr('rel')];
                                myInstance.children('.bg_diy_tit').find('a').attr('href', 'javascript:void(0)').attr('rel', newId)
                                myInstance.attr('id', newId);
                                break;
                            case "addModel":
                                myInstance = inst.options.dragItem['placeholder'];
                                //alert( this.instance.element.width());
                                myInstance.width(80);
                                myInstance.height(25);
                                myInstance.html('loading...');

                                break;
                        }
                        
                        // }
                        this.instance.isOver = 1;
                        //Now we fake the start of dragging for the sortable instance,
                        //by cloning the list group item, appending it to the sortable and using it as inst.currentItem
                        //We can then fire the start event of the sortable with our passed browser event, and our own helper (so it doesn't create a new one)
                        //this.instance.options.dragItem[$(self).attr('rel')].clone()
                        this.instance.currentItem = myInstance.clone().appendTo(this.instance.element).data("sortable-item", true);
                        this.instance.options._helper = this.instance.options.helper; //Store helper option to later restore it
                        this.instance.options.helper = function(){
                            return ui.helper[0];
                        };
                        
                        event.target = this.instance.currentItem[0];
                        this.instance._mouseCapture(event, true);
                        this.instance._mouseStart(event, true, true);
                        //Because the browser event is way off the new appended portlet, we modify a couple of variables to reflect the changes
                        this.instance.offset.click.top = inst.offset.click.top;
                        this.instance.offset.click.left = inst.offset.click.left;
                        this.instance.offset.parent.left -= inst.offset.parent.left - this.instance.offset.parent.left;
                        this.instance.offset.parent.top -= inst.offset.parent.top - this.instance.offset.parent.top;
                        
                        inst._trigger("toSortable", event);
                        inst.dropped = this.instance.element; //draggable revert needs that
                        //hack so receive/update callbacks work (mostly)
                        
                        inst.currentItem = inst.element;
                        this.instance.fromOutside = inst;
                        
                    }
                    
                    //Provided we did all the previous steps, we can fire the drag event of the sortable on every draggable drag, when it intersects with the sortable
                    if (this.instance.currentItem) 
                        this.instance._mouseDrag(event);
                    
                }
                else {
                
                    //If it doesn't intersect with the sortable, and it intersected before,
                    //we fake the drag stop of the sortable, but make sure it doesn't remove the helper by using cancelHelperRemoval
                    if (this.instance.isOver) {
                    
                        this.instance.isOver = 0;
                        this.instance.cancelHelperRemoval = true;
                        
                        //Prevent reverting on this forced stop
                        this.instance.options.revert = false;
                        
                        // The out event needs to be triggered independently
                        this.instance._trigger('out', event, this.instance._uiHash(this.instance));
                        
                        this.instance._mouseStop(event, true);
                        this.instance.options.helper = this.instance.options._helper;
                        
                        //Now we remove our currentItem, the list group clone again, and the placeholder, and animate the helper back to it's original size
                        this.instance.currentItem.remove();
                        if (this.instance.placeholder) 
                            this.instance.placeholder.remove();
                        
                        inst._trigger("fromSortable", event);
                        inst.dropped = false; //draggable revert needs that
                    }
                    
                };
                
                            });
            
        }
    });
    
    $.ui.plugin.add("draggable", "cursor", {
        start: function(event, ui){
            var t = $('body'), o = $(this).data('draggable').options;
            if (t.css("cursor")) 
                o._cursor = t.css("cursor");
            t.css("cursor", o.cursor);
        },
        stop: function(event, ui){
            var o = $(this).data('draggable').options;
            if (o._cursor) 
                $('body').css("cursor", o._cursor);
        }
    });
    
    $.ui.plugin.add("draggable", "iframeFix", {
        start: function(event, ui){
            var o = $(this).data('draggable').options;
            $(o.iframeFix === true ? "iframe" : o.iframeFix).each(function(){
                $('<div class="ui-draggable-iframeFix" style="background: #fff;"></div>').css({
                    width: this.offsetWidth + "px",
                    height: this.offsetHeight + "px",
                    position: "absolute",
                    opacity: "0.001",
                    zIndex: 1000
                }).css($(this).offset()).appendTo("body");
            });
        },
        stop: function(event, ui){
            $("div.ui-draggable-iframeFix").each(function(){
                this.parentNode.removeChild(this);
            }); //Remove frame helpers
        }
    });
    
    $.ui.plugin.add("draggable", "opacity", {
        start: function(event, ui){
            var t = $(ui.helper), o = $(this).data('draggable').options;
            if (t.css("opacity")) 
                o._opacity = t.css("opacity");
            t.css('opacity', o.opacity);
        },
        stop: function(event, ui){
            var o = $(this).data('draggable').options;
            if (o._opacity) 
                $(ui.helper).css('opacity', o._opacity);
        }
    });
    
    $.ui.plugin.add("draggable", "scroll", {
        start: function(event, ui){
            var i = $(this).data("draggable");
            if (i.scrollParent[0] != document && i.scrollParent[0].tagName != 'HTML') 
                i.overflowOffset = i.scrollParent.offset();
        },
        drag: function(event, ui){
        
            var i = $(this).data("draggable"), o = i.options, scrolled = false;
            
            if (i.scrollParent[0] != document && i.scrollParent[0].tagName != 'HTML') {
            
                if (!o.axis || o.axis != 'x') {
                    if ((i.overflowOffset.top + i.scrollParent[0].offsetHeight) - event.pageY < o.scrollSensitivity) 
                        i.scrollParent[0].scrollTop = scrolled = i.scrollParent[0].scrollTop + o.scrollSpeed;
                    else 
                        if (event.pageY - i.overflowOffset.top < o.scrollSensitivity) 
                            i.scrollParent[0].scrollTop = scrolled = i.scrollParent[0].scrollTop - o.scrollSpeed;
                }
                
                if (!o.axis || o.axis != 'y') {
                    if ((i.overflowOffset.left + i.scrollParent[0].offsetWidth) - event.pageX < o.scrollSensitivity) 
                        i.scrollParent[0].scrollLeft = scrolled = i.scrollParent[0].scrollLeft + o.scrollSpeed;
                    else 
                        if (event.pageX - i.overflowOffset.left < o.scrollSensitivity) 
                            i.scrollParent[0].scrollLeft = scrolled = i.scrollParent[0].scrollLeft - o.scrollSpeed;
                }
                
            }
            else {
            
                if (!o.axis || o.axis != 'x') {
                    if (event.pageY - $(document).scrollTop() < o.scrollSensitivity) 
                        scrolled = $(document).scrollTop($(document).scrollTop() - o.scrollSpeed);
                    else 
                        if ($(window).height() - (event.pageY - $(document).scrollTop()) < o.scrollSensitivity) 
                            scrolled = $(document).scrollTop($(document).scrollTop() + o.scrollSpeed);
                }
                
                if (!o.axis || o.axis != 'y') {
                    if (event.pageX - $(document).scrollLeft() < o.scrollSensitivity) 
                        scrolled = $(document).scrollLeft($(document).scrollLeft() - o.scrollSpeed);
                    else 
                        if ($(window).width() - (event.pageX - $(document).scrollLeft()) < o.scrollSensitivity) 
                            scrolled = $(document).scrollLeft($(document).scrollLeft() + o.scrollSpeed);
                }
                
            }
            
            if (scrolled !== false && $.ui.ddmanager && !o.dropBehaviour) 
                $.ui.ddmanager.prepareOffsets(i, event);
            
        }
    });
    
    $.ui.plugin.add("draggable", "snap", {
        start: function(event, ui){
        
            var i = $(this).data("draggable"), o = i.options;
            i.snapElements = [];
            
            $(o.snap.constructor != String ? (o.snap.items || ':data(draggable)') : o.snap).each(function(){
                var $t = $(this);
                var $o = $t.offset();
                if (this != i.element[0]) 
                    i.snapElements.push({
                        item: this,
                        width: $t.outerWidth(),
                        height: $t.outerHeight(),
                        top: $o.top,
                        left: $o.left
                    });
            });
            
        },
        drag: function(event, ui){
        
            var inst = $(this).data("draggable"), o = inst.options;
            var d = o.snapTolerance;
            
            var x1 = ui.offset.left, x2 = x1 + inst.helperProportions.width, y1 = ui.offset.top, y2 = y1 + inst.helperProportions.height;
            
            for (var i = inst.snapElements.length - 1; i >= 0; i--) {
            
                var l = inst.snapElements[i].left, r = l + inst.snapElements[i].width, t = inst.snapElements[i].top, b = t + inst.snapElements[i].height;
                
                //Yes, I know, this is insane ;)
                if (!((l - d < x1 && x1 < r + d && t - d < y1 && y1 < b + d) || (l - d < x1 && x1 < r + d && t - d < y2 && y2 < b + d) || (l - d < x2 && x2 < r + d && t - d < y1 && y1 < b + d) || (l - d < x2 && x2 < r + d && t - d < y2 && y2 < b + d))) {
                    if (inst.snapElements[i].snapping) 
                        (inst.options.snap.release &&
                        inst.options.snap.release.call(inst.element, event, $.extend(inst._uiHash(), {
                            snapItem: inst.snapElements[i].item
                        })));
                    inst.snapElements[i].snapping = false;
                    continue;
                }
                
                if (o.snapMode != 'inner') {
                    var ts = Math.abs(t - y2) <= d;
                    var bs = Math.abs(b - y1) <= d;
                    var ls = Math.abs(l - x2) <= d;
                    var rs = Math.abs(r - x1) <= d;
                    if (ts) 
                        ui.position.top = inst._convertPositionTo("relative", {
                            top: t - inst.helperProportions.height,
                            left: 0
                        }).top -
                        inst.margins.top;
                    if (bs) 
                        ui.position.top = inst._convertPositionTo("relative", {
                            top: b,
                            left: 0
                        }).top -
                        inst.margins.top;
                    if (ls) 
                        ui.position.left = inst._convertPositionTo("relative", {
                            top: 0,
                            left: l - inst.helperProportions.width
                        }).left -
                        inst.margins.left;
                    if (rs) 
                        ui.position.left = inst._convertPositionTo("relative", {
                            top: 0,
                            left: r
                        }).left -
                        inst.margins.left;
                }
                
                var first = (ts || bs || ls || rs);
                
                if (o.snapMode != 'outer') {
                    var ts = Math.abs(t - y1) <= d;
                    var bs = Math.abs(b - y2) <= d;
                    var ls = Math.abs(l - x1) <= d;
                    var rs = Math.abs(r - x2) <= d;
                    if (ts) 
                        ui.position.top = inst._convertPositionTo("relative", {
                            top: t,
                            left: 0
                        }).top -
                        inst.margins.top;
                    if (bs) 
                        ui.position.top = inst._convertPositionTo("relative", {
                            top: b - inst.helperProportions.height,
                            left: 0
                        }).top -
                        inst.margins.top;
                    if (ls) 
                        ui.position.left = inst._convertPositionTo("relative", {
                            top: 0,
                            left: l
                        }).left -
                        inst.margins.left;
                    if (rs) 
                        ui.position.left = inst._convertPositionTo("relative", {
                            top: 0,
                            left: r - inst.helperProportions.width
                        }).left -
                        inst.margins.left;
                }
                
                if (!inst.snapElements[i].snapping && (ts || bs || ls || rs || first)) 
                    (inst.options.snap.snap &&
                    inst.options.snap.snap.call(inst.element, event, $.extend(inst._uiHash(), {
                        snapItem: inst.snapElements[i].item
                    })));
                inst.snapElements[i].snapping = (ts || bs || ls || rs || first);
                
            };
            
                    }
    });
    
    $.ui.plugin.add("draggable", "stack", {
        start: function(event, ui){
        
            var o = $(this).data("draggable").options;
            
            var group = $.makeArray($(o.stack.group)).sort(function(a, b){
                return (parseInt($(a).css("zIndex"), 10) || o.stack.min) - (parseInt($(b).css("zIndex"), 10) || o.stack.min);
            });
            
            $(group).each(function(i){
                this.style.zIndex = o.stack.min + i;
            });
            
            this[0].style.zIndex = o.stack.min + group.length;
            
        }
    });
    
    $.ui.plugin.add("draggable", "zIndex", {
        start: function(event, ui){
            var t = $(ui.helper), o = $(this).data("draggable").options;
            if (t.css("zIndex")) 
                o._zIndex = t.css("zIndex");
            t.css('zIndex', o.zIndex);
        },
        stop: function(event, ui){
            var o = $(this).data("draggable").options;
            if (o._zIndex) 
                $(ui.helper).css('zIndex', o._zIndex);
        }
    });
    
})(jQuery);

(function($, window, document, undefined) {
    var $window = $(window);

    $.fn.lazyload = function(options) {
        var elements = this;
        var $container;
        var settings = {
            threshold       : 0,
            failure_limit   : 0,
            event           : "scroll",
            effect          : "show",
            container       : window,
            data_attribute  : "original",
            skip_invisible  : true,
            appear          : null,
            load            : null
        };

        function update() {
            var counter = 0;
      
            elements.each(function() {
                var $this = $(this);
                if (settings.skip_invisible && !$this.is(":visible")) {
                    return;
                }
                if ($.abovethetop(this, settings) ||
                    $.leftofbegin(this, settings)) {
                        
                } else if (!$.belowthefold(this, settings) &&
                    !$.rightoffold(this, settings)) {
                        $this.trigger("appear");
                        
                        counter = 0;
                } else {
                    if (++counter > settings.failure_limit) {
                        return false;
                    }
                }
            });

        }

        if(options) {
            
            if (undefined !== options.failurelimit) {
                options.failure_limit = options.failurelimit; 
                delete options.failurelimit;
            }
            if (undefined !== options.effectspeed) {
                options.effect_speed = options.effectspeed; 
                delete options.effectspeed;
            }

            $.extend(settings, options);
        }

        
        $container = (settings.container === undefined ||
                      settings.container === window) ? $window : $(settings.container);

        
        if (0 === settings.event.indexOf("scroll")) {
            $container.bind(settings.event, function(event) {
                return update();
            });
        }

        this.each(function() {
            var self = this;
            var $self = $(self);

            self.loaded = false;

            
            $self.one("appear", function() {
                if (!this.loaded) {
                    if (settings.appear) {
                        var elements_left = elements.length;
                        settings.appear.call(self, elements_left, settings);
                    }
                    $("<img />")
                        .bind("load", function() {
                            $self
                                .hide()
                                .attr("src", $self.data(settings.data_attribute))
                                [settings.effect](settings.effect_speed);
                            self.loaded = true;

                            
                            var temp = $.grep(elements, function(element) {
                                return !element.loaded;
                            });
                            elements = $(temp);

                            if (settings.load) {
                                var elements_left = elements.length;
                                settings.load.call(self, elements_left, settings);
                            }
                        })
                        .attr("src", $self.data(settings.data_attribute));
                }
            });

            
            
            if (0 !== settings.event.indexOf("scroll")) {
                $self.bind(settings.event, function(event) {
                    if (!self.loaded) {
                        $self.trigger("appear");
                    }
                });
            }
        });

        
        $window.bind("resize", function(event) {
            update();
        });
              
        
        
        if ((/iphone|ipod|ipad.*os 5/gi).test(navigator.appVersion)) {
            $window.bind("pageshow", function(event) {
                if (event.originalEvent.persisted) {
                    elements.each(function() {
                        $(this).trigger("appear");
                    });
                }
            });
        }

        
        $(document).ready(function() {
            update();
        });
        
        return this;
    };

    
    

    $.belowthefold = function(element, settings) {
        var fold;
        
        if (settings.container === undefined || settings.container === window) {
            fold = $window.height() + $window.scrollTop();
        } else {
            fold = $(settings.container).offset().top + $(settings.container).height();
        }

        return fold <= $(element).offset().top - settings.threshold;
    };
    
    $.rightoffold = function(element, settings) {
        var fold;

        if (settings.container === undefined || settings.container === window) {
            fold = $window.width() + $window.scrollLeft();
        } else {
            fold = $(settings.container).offset().left + $(settings.container).width();
        }

        return fold <= $(element).offset().left - settings.threshold;
    };
        
    $.abovethetop = function(element, settings) {
        var fold;
        
        if (settings.container === undefined || settings.container === window) {
            fold = $window.scrollTop();
        } else {
            fold = $(settings.container).offset().top;
        }

        return fold >= $(element).offset().top + settings.threshold  + $(element).height();
    };
    
    $.leftofbegin = function(element, settings) {
        var fold;
        
        if (settings.container === undefined || settings.container === window) {
            fold = $window.scrollLeft();
        } else {
            fold = $(settings.container).offset().left;
        }

        return fold >= $(element).offset().left + settings.threshold + $(element).width();
    };

    $.inviewport = function(element, settings) {
         return !$.rightoffold(element, settings) && !$.leftofbegin(element, settings) &&
                !$.belowthefold(element, settings) && !$.abovethetop(element, settings);
     };

    
    
    

    $.extend($.expr[':'], {
        "below-the-fold" : function(a) { return $.belowthefold(a, {threshold : 0}); },
        "above-the-top"  : function(a) { return !$.belowthefold(a, {threshold : 0}); },
        "right-of-screen": function(a) { return $.rightoffold(a, {threshold : 0}); },
        "left-of-screen" : function(a) { return !$.rightoffold(a, {threshold : 0}); },
        "in-viewport"    : function(a) { return $.inviewport(a, {threshold : 0}); },
        
        "above-the-fold" : function(a) { return !$.belowthefold(a, {threshold : 0}); },
        "right-of-fold"  : function(a) { return $.rightoffold(a, {threshold : 0}); },
        "left-of-fold"   : function(a) { return !$.rightoffold(a, {threshold : 0}); }
    });

})(jQuery, window, document);

core.comment = {
	// 给工厂调用的接口
	_init:function(attrs) {
		if(attrs.length == 3) {
			core.comment.init(attrs[1], attrs[2]);
		} else {
			return false;
		}
	},
	// 初始化评论对象
	init: function(attrs, commentListObj) {	
		// 这些参数必须传入
		this.app_uid = attrs.app_uid,
		this.row_id  = attrs.row_id,
		this.to_comment_id = attrs.to_comment_id,
		this.to_uid = attrs.to_uid;
		this.app_row_id = attrs.app_row_id;//原文ID
		this.app_row_table = attrs.app_row_table;
		this.addToEnd = "undefined" == typeof(attrs.addToEnd) ? 0 : attrs.addToEnd;
		this.canrepost = "undefined" == typeof(attrs.canrepost) ? 1 : attrs.canrepost;
		this.cancomment = "undefined" == typeof(attrs.cancomment) ?  1 : attrs.cancomment;
		this.cancomment_old = "undefined" == typeof(attrs.cancomment_old) ?  1 : attrs.cancomment_old;
		if("undefined" != typeof(attrs.app_name)) {
			this.app_name = attrs.app_name;
		} else {
			this.app_name = "public";	//默认应用
		}
		if("undefined" != typeof(attrs.table)) {
			this.table = attrs.table;
		} else {
			this.table = 'feed';	//默认表
		}
		if("undefined" != typeof(attrs.to_comment_uname)) {
			this.to_comment_uname = attrs.to_comment_uname;
		}
		if("undefined" != typeof(commentListObj)) {
			this.commentListObj = commentListObj;
		}
	},
	// 显示回复块
	display: function() {	
		var commentListObj = this.commentListObj;
		if("undefined" == typeof this.table) {
			this.table = 'feed';
		}
		if(commentListObj.style.display == 'none') {
			if(commentListObj.innerHTML !=''){
				commentListObj.style.display = 'block';
			}else{
				var rowid = this.row_id;
				var appname = this.app_name;
				var table = this.table;
				var cancomment = this.cancomment;
				commentListObj.style.display = 'block';
				commentListObj.innerHTML = '<img src="'+THEME_URL+'/image/load.gif" style="text-align:center;display:block;margin:0 auto;"/>';
				$.post(U('widget/Comment/render'),{app_uid:this.app_uid,row_id:this.row_id,app_row_id:this.app_row_id,app_row_table:this.app_row_table,isAjax:1,showlist:0,
						cancomment:this.cancomment,cancomment_old:this.cancomment_old,app_name:this.app_name,table:this.table,
						canrepost:this.canrepost },function(html){
							if(html.status =='0'){
								commentListObj.style.display = 'none';
								ui.error(html.data)
							}else{
								commentListObj.innerHTML = html.data;
								$('#commentlist_'+rowid).html('<img src="'+THEME_URL+'/image/load.gif" style="text-align:center;display:block;margin:0 auto;"/>');
								$.post(U('widget/Comment/getCommentList'),{app_name:appname,table:table,row_id:rowid,cancomment:cancomment},function (res){
									$('#commentlist_'+rowid).html(res);
									M($('#commentlist_'+rowid).get(0));
								});
								M(commentListObj);
								//@评论框
								atWho($(commentListObj).find('textarea'));
								$(commentListObj).find('textarea').focus();
							}
				},'json');
			}
		}else{
			commentListObj.style.display = 'none';
		}
	},
	// 初始化回复操作
	initReply: function() {	
		this.comment_textarea = this.commentListObj.childModels['comment_textarea'][0];
		var mini_editor = this.comment_textarea.childModels['mini_editor'][0];
		var _textarea = $(mini_editor).find('textarea');
		var html = L('PUBLIC_RESAVE')+'@'+this.to_comment_uname+' ：';			
		//_textarea.focus();
		_textarea.inputToEnd(html);
		_textarea.focus();
	},
	// 发表评论
	addComment:function(afterComment,obj) {
		var commentListObj = this.commentListObj;
		this.comment_textarea = commentListObj.childModels['comment_textarea'][0];
		var mini_editor = this.comment_textarea.childModels['mini_editor'][0];
		var _textarea = $(mini_editor).find('textarea').get(0);
		var strlen = core.getLength(_textarea.value);
		var leftnums = initNums - strlen;
		if(leftnums < 0 || leftnums == initNums) {
			flashTextarea(_textarea);
			return false;
		}
		
		// 如果转发到自己的微博
		if(this.canrepost == 1){
			var ischecked = $(this.comment_textarea).find("input[name='shareFeed']").get(0).checked;
			if(ischecked == true) {
				var ifShareFeed = 1;
			} else {
				var ifShareFeed = 0;
			}
		}else{
			var ifShareFeed = 0;
		}
		var isold = $(this.comment_textarea).find("input[name='comment']");
		var comment_old = 0;
		if( isold.get(0) != undefined) {
			if ( isold.get(0).checked == true  ){
				var comment_old = 1;
			}
		}
		var content = _textarea.value;	
		if(content == '') {
			ui.error(L('PUBLIC_CONCENT_TIPES'));
		}
		if("undefined" != typeof(this.addComment) && (this.addComment == true)) {
			return false;	//不要重复评论
		}
		var addcomment = this.addComment;
		var addToEnd = this.addToEnd;

		var _this = this;
		obj.innerHTML = '回复中..';
		$.post(U('widget/Comment/addcomment'),{
			app_name:this.app_name,
			table_name:this.table,
			app_uid:this.app_uid,
			row_id:this.row_id,
			to_comment_id:this.to_comment_id,
			to_uid:this.to_uid,
			app_row_id:this.app_row_id,
			app_row_table:this.app_row_table,
			content:content,
			ifShareFeed:ifShareFeed,
			comment_old:comment_old
			},function(msg){
				//alert(msg);return false;
				if(msg.status == "0"){
					ui.error(msg.data);
				}else{
					if("undefined" != typeof(commentListObj.childModels['comment_list']) ){
						if(addToEnd == 1){
							$(commentListObj).find(' .comment_lists').eq(0).prepend(msg.data);
						}else{
							$(msg.data).insertBefore($(commentListObj.childModels['comment_list'][0]));
						}
					}else{
						$(commentListObj).find('.comment_lists').eq(0).html(msg.data);
					}
					M(commentListObj);
					if ( obj != undefined ){
						obj.innerHTML = '回复';
					}
					//重置
					_textarea.value = '';
					_this.to_comment_id = 0;
					_this.to_uid = 0;
					if("function" == typeof(afterComment)){
						afterComment();
					}
				}
				addComment = false;
			//});
			},'json');
	},
	delComment:function(comment_id){
		$.post(U('widget/Comment/delcomment'),{comment_id:comment_id},function(msg){
			//什么也不做吧
		});
	}
};
