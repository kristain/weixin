!function(a){function b(a){var b;return h.each(i.slice.call(arguments,1),function(c){if(c)for(var d in c)void 0!==(b=c[d])&&(a[d]=b)}),a}function c(a){var b=a.match(s);return a?b[0]:a+"/"}function d(a,b){if(b&&/^[\.\/]/.test(a)){for(a=c(b)+a,a=a.replace(t,"/");a.match(u);)a=a.replace(u,"/");a=a.replace(v,"$1/")}return a}function e(a,b){return"/"===a.charAt(a.length-1)?a+="index":/.js$/.test(a)&&(a=a.slice(0,-3)),d(a,b)}function f(a,b,c){var d=h.map(b||[],function(a){return h.require(a,c)});return r(a)?a.apply(h,[h].concat(d)):void 0}function g(a){return r(a)?a.apply(h,[h,h.require]):void 0}var h={version:"0.2.0",Env:{host:a}},i=Array.prototype,j={},l=document;h.map=function(a,b){var c,d,e=[];if(h.isObject(a))for(d in a)c=b(a[d],d),null!==c&&e.push(c);else i.forEach.call(a,function(a,d){c=b(a,d),null!==c&&e.push(c)});return e.length>0?i.concat.apply([],e):e},h.each=function(a,b,c){var d,e,f;if(!a)return a;if(a.forEach===i.forEach)a.forEach(b,c);else if(h.isArray(a)){for(e=0,f=a.length;f>e;e++)if(b.call(c,a[e],e,a)===!1)return}else for(d=Object.keys(a),e=0,f=d.length;f>e;e++)if(b.call(c,a[d[e]],d[e],a)===!1)return;return a},h.mix=b,h.makeArray=function(a){if(null==a)return[];if(h.isArray(a))return a;var b=typeof a.length,c=typeof a;if("number"!==b||a.alert||"string"===c||"function"===c&&!("item"in a&&"number"===b))return[a];for(var d=[],e=0,f=a.length;f>e;e++)d[e]=a[e];return d},h.augment=function(a,b,c){return b instanceof Function&&h.mix(a.prototype,b.prototype),b instanceof Object&&h.mix(a.prototype,b),c instanceof Object&&h.mix(a.prototype,c),a},h.filter=function(a,b,c){return Array.prototype.filter.call(a,b,c||this)},h.clone=function(a,b){var c=a;if(!a)return c;var d=a.constructor;if(h.inArray(d,[Boolean,String,Number,Date,RegExp])?c=a.valueOf():h.isArray(a)?c=b?h.filter(a,b):a.concat():h.isPlainObject(a)&&(c={}),h.isArray(a))for(var e=0;e<c.length;e++)c[e]=h.clone(c[e],b);else if(h.isPlainObject(a))for(k in a)b&&b.call(a,a[k],k,a)===!1||(c[k]=h.clone(a[k],b));return c},h.ucfirst=function(a){return a+="",a.charAt(0).toUpperCase()+a.substring(1)},h.trim=function(a){return null==a?"":String.prototype.trim.call(a)},h.now=Date.now,h.reduce=function(a,b){var c=a.length;if("function"!=typeof b)throw new TypeError("callback is not function!");if(0===c&&2==arguments.length)throw new TypeError("arguments invalid");var d,e=0;if(arguments.length>=3)d=arguments[2];else do{if(e in a){d=a[e++];break}if(e+=1,e>=c)throw new TypeError}while(TRUE);for(;c>e;)e in a&&(d=b.call(void 0,d,a[e],e,a)),e++;return d},h.substitute=function(a,b,c){return"string"==typeof a&&b?a.replace(c||/\\?\{([^{}]+)\}/g,function(a,c){return"\\"===a.charAt(0)?a.slice(1):void 0===b[c]?"":b[c]}):a},h.indexOf=function(a,b){return Array.prototype.indexOf.call(b,a)},h.inArray=function(a,b){return h.indexOf(a,b)>-1},h.merge=function(){var a=i.slice.call(arguments,0);return b.apply(null,[{}].concat(a))},h.extend=function(a,b,c,d){var e,f=b.prototype;return f.constructor=b,e=Object.create(f),e.constructor=a,a.prototype=h.mix(e,a.prototype),a.superclass=f,c&&h.mix(e,c),d&&h.mix(a,d),a},h.type=function(a){return null==a?String(a):j[{}.toString.call(a)]||"object"},h.unique=function(a){return i.filter.call(a,function(b,c){return a.indexOf(b)==c})},h.isWindow=function(a){return a&&a==a.window},h.isPlainObject=function(a){return h.isObject(a)&&!h.isWindow(a)&&Object.getPrototypeOf(a)==Object.prototype},["Boolean","Number","String","Function","Array","Date","RegExp","Object","Error"].forEach(function(a){var b=a.toLowerCase();j["[object "+a+"]"]=b,h["is"+a]=function(a){return h.type(a)===b}}),h.isUndefined=function(a){return void 0===a},h.isNull=function(a){return null===a},h.isArray=Array.isArray||h.isArray,h.startsWith=function(a,b){return 0===a.lastIndexOf(b,0)},h.endsWith=function(a,b){var c=a.length-b.length;return c>=0&&a.indexOf(b,c)===c};var m=0;h.guid=function(a){return(a||"")+m++},h.ready=function(a){return/complete|loaded|interactive/.test(l.readyState)&&l.body?a(h):l.addEventListener("DOMContentLoaded",function(){a(h)},!1),this},function(a){function b(a,b,c){function d(){}var e=[].slice,f=e.call(arguments,3),g=function(){var g=e.call(arguments);return b.apply(this instanceof d?this:c||this,a?g.concat(f):f.concat(g))};return d.prototype=b.prototype,g.prototype=new d,g}a.mix(a,{noop:function(){},bind:b(0,b,null,0),rbind:b(0,b,null,1)})}(h);var n={},o={debug:!1,fns:n};h.Config=o,h.config=function(a,b){var c,d,e,f=this,g=h.Config,i=g.fns;return h.isObject(a)?h.each(a,function(a,b){e=i[b],e?e.call(f,a):g[b]=a}):(c=i[a],void 0===b?d=c?c.call(f):g[a]:c?d=c.call(f,b):g[a]=b),d},h.config("mini",!0);var p={},q=h.isString,r=h.isFunction,s=/[^?#]*\//,t=/\/\.\//g,u=/\/[^/]+\/\.\.\//,v=/([^:/])\/\//g;h.add=function(a,b,c){return q(a)&&(a=e(a),p[a]={factory:b,requires:c&&c.requires}),h},h.require=function(a,b){var c;return q(a)&&(a=e(a,b),c=p[a])?(c.exports||(c.exports=r(c.factory)?c.requires?f(c.factory,c.requires,a):g(c.factory):c.factory),c.exports):void 0},h.use=function(a,b){return h.isObject(b)&&(b=b.success),q(a)&&(a=a.replace(/\s+/g,"").split(",")),f(b,a),h},h.log=function(a,b,c){var d=console;b=b&&d[b]?b:"log",d[b](c?c+": "+a:a)},h.error=function(a){if(h.config("debug"))throw a instanceof Error?a:new Error(a)},a.KISSY=h}(this),function(a){function b(a,b){for(var c,d=0,e=a.length-1,f=[];e>=0;e--)c=a[e],"."!==c&&(".."===c?d++:d?d--:f[f.length]=c);if(b)for(;d--;d)f[f.length]="..";return f=f.reverse()}function c(a){var b=a.match(wb);return b?b[0]:"."}function d(a){return a.replace(/\.[^\/]+$/,"")}function e(a){for(a=a.replace(xb,"/");a.match(yb);)a=a.replace(yb,"/");return a=a.replace(zb,"$1/")}function f(){var a,c,d,e="",f=arguments,g=0;for(c=f.length-1;c>=0&&!g;c--)d=f[c],$(d)&&d&&(e=d+"/"+e,g="/"===jb(d,0));return a=b(qb(kb(e,"/"),function(a){return!!a}),!g).join("/"),(g?"/":"")+a||"."}function g(a,b){a=e(a),b=e(b);var c,d,f=qb(kb(a,"/"),function(a){return!!a}),g=[],h=qb(kb(b,"/"),function(a){return!!a}),i=Math.min(f.length,h.length);for(c=0;i>c&&f[c]===h[c];c++);for(d=c;c<f.length;)g.push(".."),c++;return g=g.concat(ib(h,d)),g=g.join("/")}function h(a,b){var d,f,g;return firstC=jb(a,0),f=b?c(b):Cb,Ab.test(a)?d=a:"."===firstC?d=e(f+a):"/"===firstC?(g=f.match(Bb),d=g?g[0]+gb(a,1):a):d=f+a,ab(d,"//")&&(d=fb+d),d}function i(a,b,c){return a+(hb(a,"?")>-1?"&":"?")+b+"="+c}function j(a){if($(a))return k(a);for(var b=[],c=0,d=a.length;d>c;c++)b[c]=k(a[c]);return b}function k(a){return"/"===jb(a,a.length-1)&&(a+="index"),bb(a,".js")&&(a=ib(a,0,-3)),a}function l(a,b){var c=hb(b,"!");if(-1!==c){var d=gb(b,0,c);b=gb(b,c+1),R.use(d,{sync:!0,success:function(c,e){e.alias&&(b=e.alias(a,b,d))}})}return b}function m(a,b){var d,g=0;if(!b)return b;if($(b))return ab(b,"../")||ab(b,"./")?f(c(a),b):e(b);for(d=b.length;d>g;g++)b[g]=m(a,b[g]);return b}function n(a,b){X(b,function(b){o(a,b)})}function o(a,b,c){b=k(b);var d=a.Env.mods,e=d[b];return e?e:(d[b]=e=new G(V({name:b,runtime:a},c)),e)}function p(a,b){var c,d,e,f,g=[a],h=a.Env.mods;return X(b,function(b){c=h[b],c&&"css"===c.getType()?g.push(void 0):(d=x(a,b),e=pb(d,function(a,b){return f=h[b],a&&f&&f.status>=Jb},!0),g.push(e?h[d[0]].exports:null))}),g}function q(a,b){var c,d=a.length;for(c=0;d>c;c++)t(a[c],b)}function r(a,b,c,d,e){c=c||[],e=e||{};var f,g=1,h=a.length,i=c.length;for(f=0;h>f;f++)g=g&&s(a[f],b,c,d,e),c.length=i;return!!g}function s(a,b,c,d,e){var f,g=b.Env.mods,h=g[a];return a in e?e[a]:h?(f=h.status,f===Eb?(d.push(h),e[a]=ub,ub):f>=Ib?(e[a]=tb,tb):f!==Hb?(e[a]=ub,ub):hb(c,a)>-1?(e[a]=tb,tb):(c.push(a),r(h.getNormalizedRequires(),b,c,d,e)?(h.status=Ib,e[a]=tb,tb):(e[a]=ub,ub))):(e[a]=ub,ub)}function t(a,b){var c,d=b.Env.mods,e=d[a];c=e.status,c>=Jb||(e.status=Jb,e.cjs?u(b,e):(q(e.getNormalizedRequires(),b),u(b,e)))}function u(a,b){var c,d=b.factory;if(_(d)){var e;b.requires&&b.requires.length&&(e=function(){return b.require.apply(b,arguments)}),c=d.apply(b,b.cjs?[a,e,b.exports,b]:p(a,b.getRequiresWithAlias())),void 0!==c&&(b.exports=c)}else b.exports=d;b.status=Kb}function v(a){return $(a)&&(a=kb(lb(a,/\s+/g,""),",")),a}function w(a,b,c){return x(a,y(a,b,c))}function x(a,b){for(var c,d,e,f,g=[].concat(b),h=0;!h;)for(h=1,c=g.length-1;c>=0;c--)if((d=o(a,g[c]))&&void 0!==(e=d.getAlias())){for(h=0,"string"==typeof e&&(e=[e]),f=e.length-1;f>=0;f--)e[f]||e.splice(f,1);g.splice.apply(g,[c,1].concat(j(e)))}return g}function y(a,b,c){var d,e,f=[];if(b)for(d=0,e=b.length;e>d;d++)b[d]&&f.push(l(a,j(b[d])));return c&&(f=m(c,f)),f}function z(a,b,c,d){b=k(b);var e=a.Env.mods,f=e[b];f&&void 0!==f.factory||(o(a,b),f=e[b],V(f,{name:b,status:Hb,factory:c}),V(f,d))}function A(a){var b,c=5381;for(b=a.length;--b>-1;)c=(c<<5)+c+a.charCodeAt(b);return c+""}function B(a){var b=[];return a.toString().replace(Lb,"").replace(Mb,function(a,c){b.push(C(c))}),b}function C(a){var b=a.match(/^\s*["']([^'"\s]+)["']\s*$/);return b?b[1]:""}function D(a,b){return b in a?a[b]:a.runtime.Config[b]}function E(a){V(this,a)}function F(a,b){var c,d=a.Config.packages||{},e=b+"/",f="";for(c in d)ab(e,c+"/")&&c.length>f.length&&(f=c);return d[f]||Nb}function G(a){this.exports={},this.status=Fb,this.name=void 0,this.factory=void 0,this.cjs=1,V(this,a),this.waitedCallbacks=[]}function H(){Ob||J()}function I(a){{var b;a.sheet}if(vb)a.sheet&&(b=1);else if(a.sheet)try{var c=a.sheet.cssRules;c&&(b=1)}catch(d){"NS_ERROR_DOM_SECURITY_ERR"===d.name&&(b=1)}return b}function J(){for(var a in Pb){var b=Pb[a],c=b.node;I(c,a)&&(b.callback&&b.callback.call(c),delete Pb[a],Qb--)}Ob=Qb?setTimeout(J,30):0}function K(a,b){var c,d=a.href;c=Pb[d]={},c.node=a,c.callback=b,Qb++,H()}function L(a){return a=lb(a,/\\/g,"/"),"/"!==jb(a,a.length-1)&&(a+="/"),h(a)}function M(a,b,c,d,e){function f(){--g||c(i,h)}var g=b&&b.length,h=[],i=[];X(b,function(b){var c,g={timeout:e,success:function(){i.push(b),c&&Vb&&(z(a,c.name,Vb.factory,Vb.config),Vb=void 0),f()},error:function(){h.push(b),f()},charset:d};b.combine||(c=b.mods[0],"css"===c.getType()&&(c=void 0)),Tb(b.path,g)})}function N(a,b){this.runtime=a,this.waitingModules=b}function O(a,b){if(!a&&_(b)&&b.length>1){var c=B(b);c.length&&(a=a||{},a.requires=c)}else a&&a.requires&&!a.cjs&&(a.cjs=0);return a}function P(a){this.fn=a,this.waitMods={},this.waitModsNum=0}function Q(){var a=cb.scripts,b=a[a.length-1],c=b.src||cb.URL;return c.match(/[^?#]*\//)[0]}var R=a.KISSY,S=R.Env,T=R.Config,U=R.config,V=(R.log,R.mix),W=R.map,X=R.each,Y=R.isObject,Z=R.isArray,$=R.isString,_=R.isFunction,ab=R.startsWith,bb=R.endsWith,cb=a.document,db=a.navigator.userAgent,eb=a.location,fb=(eb.href,eb.protocol),gb=function(a,b,c){return a.substring(b,c)},hb=function(a,b,c){return a.indexOf(b,c)},ib=function(a,b,c){return a.slice(b,c)},jb=function(a,b){return a.charAt(b)},kb=function(a,b){return a.split(b)},lb=function(a,b,c){return a.replace(b,c)},mb=function(a){return a.toLowerCase()},nb=Date.now,ob=Object.keys,pb=function(a,b,c){return a.reduce(b,c)},qb=function(a,b){return a.filter(b)},hb=function(a,b){return a.indexOf(b)},rb=function(a){setTimeout(a,0)},sb=function(){},tb=!0,ub=!1,vb=+db.replace(/.*AppleWebKit\/(\d+)\..*/,"$1")<536;db.match(/^XiaoMi/gim)?vb=+db.replace(/.*Safari\/(\d+)\..*/,"$1")<536:db.match(/^ZTE/)&&(vb=+db.replace(/.*AppleWebKit(\d+)\..*/,"$1")<536);var wb=/[^?#]*\//,xb=/\/\.\//g,yb=/\/[^/]+\/\.\.\//,zb=/([^:/])\/\//g,Ab=/^\/\/.|:\//,Bb=/^.*?\/\/.*?\//,Cb=c(cb.URL),Db=(function(){var a=cb.scripts,b=a[a.length-1];return b?c(b.src):Cb}(),R.Loader={}),Eb=-1,Fb=0,Gb=1,Hb=2,Ib=3,Jb=4,Kb=5;Db.Status={ERROR:Eb,INIT:Fb,LOADING:Gb,LOADED:Hb,READY_TO_ATTACH:Ib,ATTACHING:Jb,ATTACHED:Kb};var Lb=/(\/\*([\s\S]*?)\*\/|([^:]|^)\/\/(.*)$)/gm,Mb=/[^.'"]\s*require\s*\(([^)]+)\)/g;E.prototype={constructor:E,reset:function(a){V(this,a)},getTag:function(){return D(this,"tag")},getName:function(){return this.name},getPath:function(){return this.path||(this.path=this.getUri())},getUri:function(){return this.uri},isDebug:function(){return D(this,"debug")},getCharset:function(){return D(this,"charset")},isCombine:function(){return D(this,"combine")},getGroup:function(){return D(this,"group")}},Db.Package=E;var Nb=new E({name:"",runtime:R});Nb.getUri=function(){return this.runtime.Config.baseUri},G.prototype={kissy:1,constructor:G,use:function(a,b){return a=v(a),R.use(m(this.name,a),b)},resolve:function(a){return h(a,this.getUri())},resolveByName:function(a){return m(this.name,a)},require:function(a){return R.require(a,this.name)},wait:function(a){this.waitedCallbacks.push(a)},notifyAll:function(){for(var a,b=this.waitedCallbacks.length,c=0;b>c;c++){a=this.waitedCallbacks[c];try{a(this)}catch(d){setTimeout(function(){throw d},0)}}this.waitedCallbacks=[]},getType:function(){var a=this.type;return a||(a=bb(mb(this.name),".css")?"css":"js",this.type=a),a},getAlias:function(){var a,b,c=this.name,d=this.alias;return"alias"in this||(b=this.getPackage(),b.alias&&(d=b.alias(c)),!d&&(a=this.runtime.Config.alias)&&(d=a(c))),d},getUri:function(){var a;if(!this.uri){if(this.path)a=this.path;else{var b,c=this.name,e=this.getPackage(),f=e.getUri(),j=e.getName(),k="."+this.getType(),l=this.getTag(),m="-min";e.isDebug()&&(m=""),b=d(c)+m+k,j&&(b=g(j,b)),a=h(b,f),l&&(a=i(a,"t",l+k))}this.uri=a}return this.uri},getPath:function(){return this.path||(this.path=this.getUri())},getName:function(){return this.name},getPackage:function(){return this.packageInfo||(this.packageInfo=F(this.runtime,this.name))},getTag:function(){return this.tag||this.getPackage().getTag()},getCharset:function(){return this.charset||this.getPackage().getCharset()},getRequiresWithAlias:function(){var a=this.requiresWithAlias,b=this.requires;return b&&b.length?(a||(this.requiresWithAlias=a=y(this.runtime,b,this.name)),a):b||[]},getRequiredMods:function(){var a=this.runtime;return W(this.getNormalizedRequires(),function(b){return o(a,b)})},getNormalizedRequires:function(){var a,b=this.normalizedRequiresStatus,c=this.status,d=this.requires;return d&&d.length?(a=this.normalizedRequires)&&b===c?a:(this.normalizedRequiresStatus=c,this.normalizedRequires=w(this.runtime,d,this.name),this.normalizedRequires):d||[]}},Db.Module=G;var Ob=0,Pb={},Qb=0,Rb={},Sb=cb.getElementsByTagName("head")[0]||cb.documentElement,Tb=function(a,b,c){function d(){var a=l.readyState;a&&"loaded"!==a&&"complete"!==a||(l.onreadystatechange=l.onload=null,n(0))}var e,f,g,h,i,j=b,k=0;if(bb(a.toLowerCase(),".css")&&(k=1),Y(j)&&(b=j.success,e=j.error,f=j.timeout,c=j.charset,g=j.attrs),h=Rb[a]=Rb[a]||[],h.push([b,e]),h.length>1)return h.node;var l=cb.createElement(k?"link":"script"),m=function(){i&&(clearTimeout(i),i=void 0)};g&&X(g,function(a,b){l.setAttribute(b,a)}),c&&(l.charset=c),k?(l.href=a,l.rel="stylesheet"):(l.src=a,l.async=!0),h.node=l;var n=function(b){var c,d=b;m(),X(Rb[a],function(a){(c=a[d])&&c.call(l)}),delete Rb[a]},o="onload"in l,p=T.forceCssPoll||vb;return k&&p&&o&&(o=!1),o?(l.onload=d,l.onerror=function(){l.onerror=null,n(1)}):k?K(l,function(){n(0)}):l.onreadystatechange=d,f&&(i=setTimeout(function(){n(1)},1e3*f)),k?Sb.appendChild(l):Sb.insertBefore(l,Sb.firstChild),l},Ub=["alias","debug","tag","group","combine","charset"];V(T.fns,{packages:function(a){var b,c=this.Config,d=c.packages=c.packages||{};return a?void X(a,function(a,c){b=a.name||c;var e=a.base||a.path,f={runtime:R,name:b};X(Ub,function(b){b in a&&(f[b]=a[b])}),e&&(bb(e,"/")||(e+="/"),a.ignorePackageNameInUri||(e+=b+"/"),f.uri=L(e)),d[b]?d[b].reset(f):d[b]=new E(f)}):a===!1?void(c.packages={}):d},modules:function(a){var b=this;a&&X(a,function(a,c){var d=o(b,c,a);d.status===Fb&&V(d,a)})},base:function(a){return a?void(T.baseUri=L(a)):T.baseUri}});var Vb,Wb=nb();N.groupTag=Wb,N.add=function(a,b,c,d,e){if(3===e&&Z(b)){var f=b;b=c,c={requires:f,cjs:1}}_(a)||1===e?(c=b,b=a,c=O(c,b),Vb={factory:b,config:c}):(Vb=void 0,c=O(c,b),z(d,a,b,c))},N.prototype={use:function(a){var b,c,d=this,e=T.timeout,f=d.runtime;b=ob(d.calculate(a)),n(f,b),c=d.getComboUrls(b),X(c.css,function(a){M(f,a,function(a,b){X(a,function(a){X(a.mods,function(a){z(f,a.name,sb),a.notifyAll()})}),X(b,function(a){X(a.mods,function(a){a.status=Eb,a.notifyAll()})})},a.charset,e)}),X(c.js,function(a){M(f,a,function(){X(a,function(a){X(a.mods,function(a){a.factory||(a.status=Eb),a.notifyAll()})})},a.charset,e)})},calculate:function(a,b,c){var d,e,f,g,h=this,i=h.waitingModules,j=h.runtime;for(c=c||{},b=b||{},d=0;d<a.length;d++)e=a[d],b[e]||(b[e]=1,f=o(j,e),g=f.status,g>=Ib||(g!==Hb&&(i.contains(e)||(g!==Gb&&(f.status=Gb,c[e]=1),f.wait(function(a){i.remove(a.name),i.notifyAll()}),i.add(e))),h.calculate(f.getNormalizedRequires(),b,c)));return c},getComboMods:function(a,b){var c,d,e,f,g,h,i,j,k,l,m={},n=this.runtime;return X(a,function(a){d=o(n,a),f=d.getType(),e=d.getPackage(),l=e.name,j=e.getCharset(),i=e.getTag(),c=e.getUri(),k=l,d.canBeCombined=e.isCombine(),b[l]=c,g=m[f]=m[f]||{},(h=g[k])?(1!==h.tags.length||h.tags[0]!==i)&&h.tags.push(i):(h=g[k]=[],h.charset=j,h.tags=[i]),h.push(d)}),m},getComboUrls:function(a){var b=this.runtime,c=b.Config,d=c.comboPrefix,e=c.comboSep,f=c.comboMaxFileNum,g=c.comboMaxUrlLength,h={},i=this.getComboMods(a,h),j={};for(var k in i){j[k]={};for(var l in i[k]){var m=[],n=[],o=i[k][l],p=o.tags,q=p.length>1?A(p.join("")):p[0],r=q?"?t="+encodeURIComponent(q)+"."+k:"",s=r.length,t=h[l].toString(),u=t.length,v=t+d,w=j[k][l]=[],x=v.length;w.charset=o.charset,w.mods=[];for(var y=function(){w.push({combine:1,path:v+m.join(e)+r,mods:n})},z=0;z<o.length;z++){var B=o[z];w.mods.push(B);var C=B.getPath();if(B.canBeCombined){var D=C.slice(u).replace(/\?.*$/,"");m.push(D),n.push(B),(m.length>f||x+m.join(e).length+s>g)&&(m.pop(),n.pop(),y(),m=[],n=[],z--)}else w.push({combine:0,path:C,mods:[B]})}m.length&&y()}}return j}},Db.ComboLoader=N,P.prototype={constructor:P,notifyAll:function(){var a=this.fn;a&&!this.waitModsNum&&(this.fn=null,a())},add:function(a){this.waitMods[a]=1,this.waitModsNum++},remove:function(a){delete this.waitMods[a],this.waitModsNum--},contains:function(a){return this.waitMods[a]}},Db.WaitingModules=P,V(R,{add:function(a,b,c){N.add(a,b,c,R,arguments.length)},use:function(a,b){function c(){++i;{var a,k=[];nb()}a=r(d,R,void 0,k),a?(q(d,R),b&&(g?h():rb(h))):k.length?f&&(g?f.apply(R,k):rb(function(){f.apply(R,k)})):(j.fn=c,e.use(d))}var d,e,f,g,h,i=0,j=new P(c);return Y(b)&&(g=b.sync,f=b.error,b=b.success),h=function(){b.apply(R,p(R,a))},a=v(a),a=y(R,a),d=x(R,a),e=new N(R,j),g?j.notifyAll():rb(function(){j.notifyAll()}),R},require:function(a,b){if(a){var c=x(R,y(R,[a],b));return q(c,R),p(R,c)[1]}}}),S.mods={},U({debug:!1,base:Q(),comboPrefix:"??",comboSep:",",charset:"utf-8",lang:"zh-cn",comboMaxUrlLength:2e3,comboMaxFileNum:40}),function(){var a=document.getElementsByTagName("script"),b=a[a.length-1],c=b.src,d=KISSY;d.config({base:"http://g.tbcdn.cn/kissy/k/1.4.1",packages:[{name:"gallery",path:"http://a.tbcdn.cn/s/kissy/gallery",charset:"utf-8",ignorePackageNameInUri:!0},{name:"m",path:/g\.assets/i.test(c)?"http://g.assets.daily.taobao.net/kissy/m/0.2.0":"http://g.tbcdn.cn/kissy/m/0.2.0",charset:"utf-8",ignorePackageNameInUri:!0}],modules:{core:{alias:["m/anim","m/touch","m/lang","m/base","m/ua","m/uri","m/juicer","m/form"]},anim:{alias:["m/anim"]},touch:{alias:["m/touch"]},lang:{alias:["m/lang"]},base:{alias:["m/base"]},ua:{alias:["m/ua"]},uri:{alias:["m/uri"]},form:{alias:["m/form"]},juicer:{alias:["m/juicer"]}}})}()}(this),function(a,b){function c(a,b){for(var c in b)a[c]=b[c]}function d(a,b){var c,d=[];return a&&O.call(a,function(a,e){c=b(a,e),null!==c&&d.push(c)}),d.length?M.apply([],d):d}function e(a,b){return a&&O.call(a,b),a}function f(a){return a&&a==a.window}function g(a){return a&&9===a.nodeType}function h(a){return a&&1===a.nodeType}function i(a){return a&&"number"==typeof a.length}function j(a){return L.call(a,function(b,c){return a.indexOf(b)==c})}function k(a){var b=F.createElement("script"),c=F.getElementsByTagName("head")[0]||G;b.src=a,c.insertBefore(b,c.firstChild)}function l(a){return function(b){return{}.toString.call(b)=="[object "+a+"]"}}function m(a,b){return 1===b.length?n(a,b[0]):j(d(b,function(b){return n(a,b)}))}function n(a,b){var c,d=a.charAt(0),e="#"===d,f="."===d,i=e||f?a.slice(1):a,j=/^[\w-]*$/.test(i);return g(b)||h(b)?g(b)&&e&&j?(c=b.getElementById(i))?[c]:[]:K.call(!e&&j?f?b.getElementsByClassName(i):b.getElementsByTagName(a):b.querySelectorAll(a)):[]}function o(a,b){if(!a||!b||!h(a))return!1;var c=a.webkitMatchesSelector||a.mozMatchesSelector||a.oMatchesSelector||a.matchesSelector;if(c)return c.call(a,b);var d,e=a.parentNode,f=!!e;return f||(e=X,e.appendChild(a)),d=~n(b,e).indexOf(a),!f&&e.removeChild(a),d}function p(a){return a in Y?Y[a]:Y[a]=new RegExp("(^|\\s)"+a+"(\\s|$)")}function q(a,b){return void 0===b?a.className:void(a.className=b)}function r(a){return a.split(/[\.\s]\s*\.?/)}function s(a,b){return d(a,function(a){return a[b]})}function t(a,b,c){null==c?a.removeAttribute(b):a.setAttribute(b,c)}function u(a){return a.replace(/::/g,"/").replace(/([A-Z]+)([A-Z][a-z])/g,"$1_$2").replace(/([a-z\d])([A-Z])/g,"$1_$2").replace(/_/g,"-").toLowerCase()}function v(a){return a.replace(/-+(.)?/g,function(){return arguments[1].toUpperCase()})}function w(a,b){return P(b)&&!ab[u(a)]?b+"px":b}function x(a,b){return E.getComputedStyle(a,null).getPropertyValue(b)}function y(a){if(!bb[a]){var b,c=F.createElement(a);F.body.appendChild(c),b=x(c,"display"),c.parentNode.removeChild(c),"none"==b&&(b="block"),bb[a]=b}return bb[a]}function z(a,b){var c=W(a);return void 0!==b?c.filter(S(b)?function(a){return I.call(b,function(b){return o(a,b)})}:b):c}function A(a){return"children"in a?K.call(a.children):d(a.childNodes,function(a){return h(a)?a:void 0})}function B(a,b,c,d){var e=[],f=S(b);for(a=d?a:a[c];a;)a&&!g(a)&&h(a)&&e.indexOf(a)<0&&e.push(a),a=a[c];return f&&!b.length&&(b=void 0),e=z(e,b),f?e:e.item(0)}function C(a,b){var c=[];return e(a,function(a){var d=a.nodeName,f=a.type,g=[];!d||"SCRIPT"!==d||f&&"text/javascript"!==f?(h(a)&&(e(a.getElementsByTagName("script"),function(a){g.push(a)}),C(g,b)),c.push(a)):(a.parentNode&&a.parentNode.removeChild(a),b&&b.push(a))}),c}function D(a){var b=null;return a&&i(a)&&(b=F.createDocumentFragment(),e(a,function(a){b.appendChild(a)})),b}var E=window,F=document,G=F.documentElement,H=[],I=H.some,J=H.every,K=H.slice,L=H.filter,M=H.concat,N=H.indexOf,O=H.forEach,P=l("Number"),Q=l("String"),R=l("Object"),S=Array.isArray||l("Array"),T=l("Function"),U=function(a){return R(a)&&!f(a)&&Object.getPrototypeOf(a)==Object.prototype},V={};c(V,{indexOf:function(a){return i(a)?N.call(this,a[0]):N.apply(this,arguments)},each:function(a){return J.call(this,function(b,c){return b=W(b),a.call(b,b,c)!==!1}),this},slice:function(){return W(K.apply(this,arguments))},end:function(){return this.__parent||this},getDOMNode:function(){return this[0]}});var W=function(a,b){var c=[];if(a)if(Q(a))a=a.trim(),c="<"==a[0]&&/<([\w:]+)/.test(a)?V.create(a):void 0!==b?m(a,W(b)):n(a,F);else{if(W.isNode(a))return a;a.nodeType||a.setTimeout?c=[a]:S(a)?c=a:a.nodeType||a.setTimeout||!a.item||(c=K.call(a))}return W.node(c)};W.all=function(a,b){return W(a,b)},W.one=function(a,b){return W(a,b).item(0)},W.node=function(a){return a=a||[],a.__proto__=V,a},W.node.prototype=V,W.isNode=function(a){return a instanceof W.node};var X=document.createElement("div");c(b,{query:n}),c(V,{all:function(a){var b,c=this;return b=W(m(a,c)),b.__parent=c,b},one:function(a){var b,c=this;return b=c.all(a),b=b.length?b.slice(0,1):null,b&&(b.__parent=c),b},filter:function(a){return W(T(a)?L.call(this,function(b){return a.call(b,b)}):L.call(this,function(b){return o(b,a)}))}});var Y={};c(V,{addClass:function(a){return a?e(this,function(b){var c=W(b),d=q(b),f=[];e(r(a),function(a){!c.hasClass(a)&&f.push(a)}),f.length&&q(b,d+(d?" ":"")+f.join(" "))}):this},removeClass:function(a){return e(this,function(b){if(void 0===a)return q(b,"");var c=q(b);e(r(a),function(a){c=c.replace(p(a)," ")}),q(b,c.trim())})},toggleClass:function(a,b){return a?e(this,function(c){var d=W(c);e(r(a),function(a){(void 0===b?!d.hasClass(a):b)?d.addClass(a):d.removeClass(a)})}):this},hasClass:function(a){return a?I.call(this,function(a){return J.call(this,function(b){return b?p(b).test(q(a)):!0})},r(a)):!1}});var Z=/^(?:autofocus|autoplay|async|checked|controls|defer|disabled|hidden|loop|multiple|open|readonly|required|scoped|selected)$/i,$=["val","css","html","text","data","width","height","offset"],_={hidefocus:"hideFocus",tabindex:"tabIndex",readonly:"readOnly","for":"htmlFor","class":"className",maxlength:"maxLength",cellspacing:"cellSpacing",cellpadding:"cellPadding",rowspan:"rowSpan",colspan:"colSpan",usemap:"useMap",frameborder:"frameBorder",contenteditable:"contentEditable"};c(V,{attr:function(a,b){var c,d;if(U(a)){for(c in a)V.attr.call(this,c,a[c]);return this}if(~$.indexOf(a))return W(this)[a](b);if(void 0==b){var f=this[0];f&&h(f)&&(Z.test(a)?d=W(f).prop(a)?a.toLowerCase():void 0:"value"==a&&"INPUT"==f.nodeName?d=this.val():(d=f.getAttribute(a),d=!d&&a in f?f[a]:d))}else d=e(this,function(c){h(c)&&t(c,a,b)});return null===d?void 0:d},removeAttr:function(a){return e(this,function(b){h(b)&&t(b,a)})},hasAttr:function(a){return a?I.call(this,function(b){return h(b)&&b.getAttribute(a)}):!1},prop:function(a,b){return a=_[a]||a,void 0==b?this[0]&&this[0][a]:e(this,function(c){c[a]=b})},hasProp:function(a){return a?(a=_[a]||a,I.call(this,function(b){return h(b)&&b[a]})):!1},val:function(a){var b=this[0];if(!b)return this;if(b.multiple){var c=W("option",b);return void 0==a?K.call(s(c.filter(function(a){return a.selected}),"value")):e(c,function(b){b.selected=~a.indexOf(b.value)})}return void 0==a?b.value:e(this,function(b){b.value=a})},text:function(a){return void 0===a?this.length?this[0].textContent:null:e(this,function(b){b.textContent=void 0===a?"":""+a})}});var ab={"column-count":1,columns:1,"font-weight":1,"line-height":1,opacity:1,"z-index":1,zoom:1},bb={};c(V,{css:function(a,b){var c,d="";if(void 0==b){if(Q(a)){var f=this[0];return f?f.style[v(a)]||x(f,a):""}if(R(a))for(c in a)d+=u(c)+":"+w(c,a[c])+";"}else d=u(a)+":"+w(a,b)+";";return e(this,function(a){a.style.cssText+=";"+d})},show:function(){return e(this,function(a){"none"==a.style.display&&(a.style.display=""),"none"==x(a,"display")&&(a.style.display=y(a.nodeName))})},hide:function(){return this.css("display","none")},toggle:function(){return e(this,function(a){var b=W(a);"none"==b.css("display")?b.show():b.hide()})}}),e(["width","height"],function(a){V[a]=function(b){var c=this[0];return b?W(this).css(a,b):f(c)?c[v("inner-"+a)]:g(c)?G[v("scroll-"+a)]:this.offset()[a]}}),c(V,{item:function(a){var b=this;return P(a)?a>=b.length?null:W(b[a]):W(a)},first:function(a){return B(this[0]&&this[0].firstChild,a,"nextElementSibling",!0)},last:function(a){return B(this[0]&&this[0].lastChild,a,"previousElementSibling",!0)},next:function(a){return B(this[0],a,"nextElementSibling")},prev:function(a){return B(this[0],a,"previousElementSibling")},parent:function(a){return B(this[0],a,"parentNode")},children:function(a){var b=this[0];return b?z(A(b),a):this},siblings:function(a){var b=this[0];return b?z(L.call(A(b.parentNode),function(a){return a!==b}),a):this},contents:function(){var a=this[0];return a?W(K.call(a.childNodes)):this},contains:function(a){var b=this[0],a=i(a)?a[0]:a;return b&&a?b!==a&&b.contains(a):!1}}),c(V,{wrapAll:function(a){var b=this[0];if(b){var c,d=W(a);for(d.insertBefore(b);(c=d.children()).length;)d=d.first();d.append(this)}return this},wrap:function(a){var b=W(a),c=b[0].parentNode||this.length;return e(this,function(a){W(a).wrapAll(c?b[0].cloneNode(!0):b[0])})},unwrap:function(){return e(this,function(a){var b=W(a),c=b.parent();c.replaceWith(c.children())})},wrapInner:function(a){return e(this,function(b){var c=W(b),d=c.children();d.length?d.wrapAll(a):c.append(a)})},replaceWith:function(a){return this.before(a).remove()}}),e(["after","prepend","before","append"],function(a,b){var c=b%2;V[a]=function(a,d){var f,g,h=Q(a)?V.create(a):a,i=this.length>1;if(d)var j=[];return h.length?(h=D(C(h,j)),e(this,function(a){switch(f=c?a:a.parentNode,b){case 0:g=a.nextSibling;break;case 1:g=a.firstChild;break;case 2:g=a;break;default:g=null}f.insertBefore(i?h.cloneNode(!0):h,g),e(j,function(a){a.src?k(a.src):E.eval.call(E,a.innerHTML)})})):this},V[c?a+"To":"insert"+(b?"Before":"After")]=function(b){return W(b)[a](this),this}}),c(V,{offset:function(a){var b;if(this.length){if(void 0!==a)return e(this,function(b){var c,d,e={},f=W(b),g=f.offset();"static"===f.css("position")&&f.css("position","relative");for(c in a)d=parseFloat(f.css(c))||0,e[c]=d+a[c]-g[c];f.css(e)}),this;var c=this[0].getBoundingClientRect();b={left:c.left+E.pageXOffset,top:c.top+E.pageYOffset,width:Math.round(c.width),height:Math.round(c.height)}}return b}}),e(["scrollTop","scrollLeft"],function(a,b){V[a]=function(c){var d=this[0],f=a in d;return void 0===c?f?d[a]:d["page"+(b?"X":"Y")+"Offset"]:f?e(this,function(b){b[a]=c}):e(this,function(a){b?a.scrollTo(c,a.scrollY):a.scrollTo(a.scrollX,c)})}});var cb=/<([\w:]+)/,db=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,eb=/^<(\w+)\s*\/?>(?:<\/\1>)?$/,fb=F.createElement("div"),gb=F.createElement("table"),hb=F.createElement("tbody"),ib=F.createElement("tr"),jb={"*":fb,thead:gb,tbody:gb,tfoot:gb,tr:hb,th:ib,td:ib};c(V,{create:function(a,b){var c,d,f,g=[];if(!a||!Q(a))return g;if(eb.test(a)?g=W(F.createElement(RegExp.$1)):(a=a.replace(db,"<$1></$2>"),d=cb.test(a)&&RegExp.$1,f=jb[d]||jb["*"],f.innerHTML=a,g=e(K.call(f.childNodes),function(a){f.removeChild(a)})),U(b))for(c in b)g.attr(c,b[c]);return g},html:function(a,b){return void 0===a?this.length?this[0].innerHTML:null:e(this,function(c){W(c).empty().append(a,b)})},remove:function(){var a=this;return a.detach&&a.detach(),e(a,function(a){a.parentNode&&a.parentNode.removeChild(a)})},empty:function(){return e(this,function(a){a.innerHTML=""})},clone:function(a){return W(d(this,function(b){return b.cloneNode(!!a)}))}}),"__proto__"in{}||c(W,{node:function(a){return a=a||[],c(a,V),a.__node=!0,a},isNode:function(a){return S(a)&&"__node"in a}}),c(b,{node:V,Node:W,NodeList:W,one:W.one,all:W.all}),b.add&&b.add("node",function(){return W})}(this,KISSY),function(a){function b(a){return function(){return a}}function c(a){return a._eid||(a._eid=r++)}function d(a){var b=a.split(".");return{e:b[0],ns:b.slice(1).join(" ")}}function e(a){return new RegExp("(?:^| )"+a.replace(" "," .* ?")+"(?: |S)")}function f(a,b,f,g,h){var i=d(b);if(i.ns)var j=e(b.ns);return(w[c(a)]||[]).filter(function(a){return!(!a||i.e&&a.e!=i.e||i.ns&&!j.test(a.ns)||f&&a.fn!==f||g&&a.sel!=g||h&&a.scope!==h)})}function g(a,b){return a.del&&!x&&a.e in y||!!b}function h(a){return x&&focusEvnet[a]||a}function i(a){var b,c={originalEvent:a};for(b in a)void 0!==a[b]&&(c[b]=a[b]);return j(c,a)}function j(a,c){return(c||!a.isDefaultPrevented)&&(c||(c=a),u(A,function(d,e){var f=c[e];a[e]=function(){return this[d]=b(!0),f&&f.apply(c,arguments)},a[d]=b(!1)}),a.halt=function(){this.preventDefault(),this.stopPropagation()},(void 0!==c.defaultPrevented?c.defaultPrevented:"returnValue"in c?c.returnValue===!1:c.getPreventDefault&&c.getPreventDefault())&&(a.isDefaultPrevented=b(!0))),a}function k(a,b){var c=document.createEvent(z[a]||"Events"),d=!0;if(b)for(var e in b)"bubbles"==e?d=!!b[e]:c[e]=b[e];return c.initEvent(a,d,!0),j(c)}function l(b,e,f,i,k,l){var m=c(b),n=w[m]||(w[m]=[]);return"ready"==e?a.ready(f):void e.split(/\s/).map(function(c){var e=d(c);e.fn=f,e.sel=i,e.del=k,e.scope=l;var m=k||f;e.proxy=function(a){if(a=j(a),!a.isImmediatePropagationStopped()){var c=m.apply(l||b,void 0==a._args?[a]:[a].concat(a._args));return c===!1&&(a.preventDefault(),a.stopPropagation()),c}},e.i=n.length,n.push(e),b.addEventListener(h(e.e),e.proxy,g(e)),c in a.Event.Special&&a.Event.Special[c].setup.apply(a.one(b,[e.scope]))})}function m(b,d,e,i,j){var k=c(b),l=function(c){c.map(function(c){delete w[k][c.i],b.removeEventListener(h(c.e),c.proxy,g(c)),event in a.Event.Special&&a.Event.Special[event].teardown.apply(a.one(b))})};d?d.split(/\s/).map(function(a){l(f(b,a,e,i,j))
}):l(w[k]||[])}function n(a){var b={};return t(b,a),b.__proto__=a.__proto__,b}function o(a){return a.split(" ")}var p=a.all,q=a.node,r=1,s=function(a){return"function"==typeof a},t=function(a,b){for(var c in b)a[c]=b[c]},u=function(a,b,c){Object.keys(a).map(function(d){b.call(c,a[d],d,a)})},v=[].slice,w=[],x="onfocusin"in window,y={focus:"focusin",blur:"focusout"},z={click:"MouseEvent"},A={preventDefault:"isDefaultPrevented",stopImmediatePropagation:"isImmediatePropagationStopped",stopPropagation:"isPropagationStopped"};q.on=function(a,b,c,d){var e,f=this;return s(b)&&(d=c,c=b,b=void 0),c===!1&&(c=returnFalse),f.each(function(f){b&&(e=function(a){var e,g,h=f.all(b);if(h&&h.length)return g=h.filter(function(b){return b==a.target||p(b).contains(a.target)})[0],g&&g!==f[0]?(e=i(a),e.currentTarget=g,e.liveFired=f[0],c.apply(d||g,[e].concat(v.call(arguments,1)))):void 0}),l(f[0],a,c,b,e,d)}),f},q.detach=function(a,b,c,d){var e=this;return s(b)&&(d=c,c=b,b=void 0),e.each(function(e){m(e[0],a,c,b,d)}),e},q.delegate=function(a,b,c,d){return this.on(a,b,c,d)},q.undelegate=function(a,b,c,d){return this.detach(a,b,c,d)},q.fire=function(a,b){var c=this;return a.split(/\s/).map(function(d){d=k(d,b),c.each(function(c){"dispatchEvent"in c[0]?c[0].dispatchEvent(d):c.fireHandler(a,b)})}),c},q.fireHandler=function(a,b){var c,d,e=this;return a.split(/\s/).map(function(a){e.each(function(e){c=k(a),c.target=e[0],null===c.target&&(c=n(c)),t(c,b),f(e[0],a).map(function(a){return d=a.proxy(c),c.isImmediatePropagationStopped()?!1:void 0})})}),e},a.Event||(a.Event={}),a.Event.Target={_L:{},on:function(a,b,c){var d=o(a),e=this;return d.map(function(d){var f=d in e._L?e._L[d]:e._L[d]=[];f.push({E:a,F:b,S:c})}),e},fire:function(b,c){var d=o(b),e=this;return d.map(function(b){var d=e._L[b],f=a.mix(c||{},{target:e,currentTarget:e});d&&d.map(function(a){a.F.apply(a.S||e,[f].concat([].slice.call(arguments,2)))})}),e},detach:function(a,b,c){var d=o(a),e=this;return d.map(function(a){var d=e._L[a];if(d&&(b||!(e._L[a]=[])))for(var f=0;f<evT._Length;f++)group.F!=b||group.S!=c?group.F!=b||d.split(f,1):d.split(f,1)}),e}},a.Event.Special={},a.add("event",function(a){return a.Event})}(KISSY),function(a,b){function c(a,b){var c,d;for(d in b)void 0!==(c=b[d])&&(a[d]=c);return a}function d(a,b){return c(c({},a),b)}function e(a){return function(b){return{}.toString.call(b)=="[object "+a+"]"}}function f(a,b,c){var d,e,f=Object.keys(a);for(d=0,e=f.length;e>d;d++)if(b.call(c,a[f[d]],f[d],a)===!1)return}function g(a){a.url||(a.url=u.toString()),a.processData&&v(a.data)&&(a.data=l(a.data,a.serializeArray)),a.type=a.type.toUpperCase(),a.data&&"GET"==a.type&&(a.url=k(a.url,a.data)),a.cache===B&&(a.url=k(a.url,"t="+Date.now()));var b=/^([\w-]+:)?\/\/([^\/]+)/.test(a.url),c=b?RegExp.$1:u.protocol;return a.local="file:"==c,a.context||(a.context=a),a}function h(a,b){i.fire(a,{io:b})}function i(a){var b=this;if(!(b instanceof i))return new i(a);var c=g(d(J,a)),e=c.timeout;b.cfg=c,h("start",b);var f=c.dataType,j=I[f]||I[G],k=new j(b);b.transport=k;var l=c.beforeSend;if(l&&l.call(c.context,b,c)===!1)return b.abort(),b;h("send",b),e>0&&(b._timer=setTimeout(function(){b.abort("timeout")},1e3*e));try{k.send()}catch(m){b._complete(B,m.message)}return b}function j(a,b){I[a]=b}function k(a,b){return(a+"&"+b).replace(/[&?]{1,2}/,"?")}function l(a,b){var c=[];return m(c,a,b),c.join("&")}function m(a,b,c,d){var e=c===!0?K("[]"):G;f(b,function(b,f){d&&(f=d+e),w(b)?m(a,b,c,f):a.push(f+"="+K(b))})}function n(){return new a[L]}function o(a){this.io=a}function p(a){var b=a&&N.test(a),c=b?RegExp.$1:"text";return"javascript"===c?"script":c}function q(a){return JSON.parse(a)}function r(a){this.io=a}function s(a,b){return function(c,d,e,f,g){return x(d)&&(f=e,e=d,d=C),i({type:a||g,url:c,data:d,success:e,dataType:b||f})}}var t=a.document,u=a.location,v=e("Object"),w=Array.isArray||e("Array"),x=e("Function"),y=function(a,b){b=b||{},b instanceof Function&&(b={success:b});var c=t.createElement("script"),d=t.getElementsByTagName("head")[0]||t.documentElement;return c.charset=b.charset||"",c.onload=b.success,c.onerror=b.error,c.src=a,d.insertBefore(c,d.firstChild),c},z=1,A=!0,B=!A,C=null,D="abort",E="success",F="error",G="",H=function(){},I={},J={type:"GET",async:A,serializeArray:A,processData:A,beforeSend:H,success:H,error:H,complete:H,context:C,accepts:{script:"text/javascript,application/javascript",json:"application/json,text/json",xml:"application/xml,text/xml",html:"text/html",text:"text/plain"},timeout:0,cache:A};c(i,b.Event.Target),c(i.prototype,{abort:function(a){this.transport.abort(a)},_complete:function(a,b){var c=this,d=c.cfg,e=d.context,f=[c.responseData,b,c],g=a?E:F,i="complete";c._end||(c._end=A,clearTimeout(c._timer),d[g].apply(e,f),h(g,c),d[i].apply(e,f),h(i,c))}});var K=encodeURIComponent,L="XMLHttpRequest",M=/^\s*$/;c(o.prototype,{_init:function(){var a=this,b=a.io,c=b.cfg,e=c.dataType,g=c.accepts[e],h={},i=n();b.getNativeXhr=function(){return i},c.crossDomain||(h["X-Requested-With"]=L),g&&(h.Accept=g,i.overrideMimeType&&(g.indexOf(",")>-1&&(g=g.split(",",2)[0]),i.overrideMimeType(g))),(c.contentType||c.data&&"GET"!=c.type)&&(h["Content-Type"]=c.contentType||"application/x-www-form-urlencoded"),c.headers=d(h,c.headers||{}),i.onreadystatechange=function(){if(4===i.readyState){var a,d=B;if(i.status>=200&&i.status<300||304==i.status||0==i.status&&c.local){e=e||p(i.getResponseHeader("Content-Type")),a=b.responseText=i.responseText,b.responseXML=i.responseXML;try{"script"==e?(1,eval)(a):"xml"==e?a=i.responseXML:"json"==e&&(a=M.test(a)?C:q(a))}catch(f){d=f}b.responseData=a,d?b._complete(B,"parsererror"):b._complete(A,E)}else b._complete(B,F)}},i.open(c.type,c.url,c.async),f(c.headers,function(a,b){i.setRequestHeader(b,a)}),i.send(c.data?c.data:C)},abort:function(a){var b=this,c=b.xhr,d=b.io;c&&(c.onreadystatechange=H,c.abort()),d._complete(B,a||D)},send:function(){this._init()}}),j(G,o);var N=/^(?:text|application)\/(json|javascript|xml|html)/i;c(r.prototype,{abort:function(a){this._end(B,a||D)},_end:function(b,c){var d=this,e=d.script,f=d.io,g=d._globalVar;a[g]=function(){delete a[g]},e&&(e.src=C,e.onload=e.onerror=H,e.parentNode.removeChild(e)),f._complete(b,c)},send:function(){var b=this,c=b.io,d=c.cfg,e=d.jsonp||"callback",f=d.jsonpCallback||"jsonp"+z++;b._globalVar=f;var g=k(d.url,e+"="+f);a[f]=function(a){c.responseData=a,b._end(A,E)},b.script=y(g,{charset:d.scriptCharset,error:function(){b._end(B,F)}})}}),j("jsonp",r),c(i,{get:s("get"),post:s("post"),jsonp:s(C,"jsonp"),getJSON:s(C,"json"),getScript:y}),c(b,{IO:i,jsonp:i.jsonp,getScript:y}),b.add("io",function(){return i})}(this,KISSY);