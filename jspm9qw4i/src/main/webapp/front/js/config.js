
var projectName = '校园二手物品交易平台';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.jsp'
}
]


var indexNav = [

{
	name: '二手信息',
	url: './pages/ershouxinxi/list.jsp'
}, 
{
	name: '低价急售',
	url: './pages/dijiajishou/list.jsp'
}, 

{
	name: '二手物品资讯',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspm9qw4i/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["新增","查看","修改","删除"],"menu":"学生二手","menuJump":"列表","tableName":"xueshengershou"}],"menu":"学生二手管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["新增","查看","修改","删除","查看评论"],"menu":"二手信息","menuJump":"列表","tableName":"ershouxinxi"}],"menu":"二手信息管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["新增","查看","修改","删除","查看评论"],"menu":"低价急售","menuJump":"列表","tableName":"dijiajishou"}],"menu":"低价急售管理"},{"child":[{"appFrontIcon":"cuIcon-time","buttons":["新增","查看","修改","删除"],"menu":"急售订单信息","menuJump":"列表","tableName":"jishoudingdanxinxi"}],"menu":"急售订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除"],"menu":"物品类型","menuJump":"列表","tableName":"wupinleixing"}],"menu":"物品类型管理"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"二手物品资讯","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论","购买"],"menu":"二手信息列表","menuJump":"列表","tableName":"ershouxinxi"}],"menu":"二手信息模块"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论","购买"],"menu":"低价急售列表","menuJump":"列表","tableName":"dijiajishou"}],"menu":"低价急售模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","查看评论","购买"],"menu":"二手信息","menuJump":"列表","tableName":"ershouxinxi"}],"menu":"二手信息管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看","支付"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","查看评论","购买"],"menu":"低价急售","menuJump":"列表","tableName":"dijiajishou"}],"menu":"低价急售管理"},{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","支付"],"menu":"急售订单信息","menuJump":"列表","tableName":"jishoudingdanxinxi"}],"menu":"急售订单信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论","购买"],"menu":"二手信息列表","menuJump":"列表","tableName":"ershouxinxi"}],"menu":"二手信息模块"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论","购买"],"menu":"低价急售列表","menuJump":"列表","tableName":"dijiajishou"}],"menu":"低价急售模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-form","buttons":["新增","查看","修改","删除","查看评论"],"menu":"二手信息","menuJump":"列表","tableName":"ershouxinxi"}],"menu":"二手信息管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看","审核"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","修改","新增","删除","查看评论"],"menu":"低价急售","menuJump":"列表","tableName":"dijiajishou"}],"menu":"低价急售管理"},{"child":[{"appFrontIcon":"cuIcon-time","buttons":["查看","审核"],"menu":"急售订单信息","menuJump":"列表","tableName":"jishoudingdanxinxi"}],"menu":"急售订单信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论","购买"],"menu":"二手信息列表","menuJump":"列表","tableName":"ershouxinxi"}],"menu":"二手信息模块"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","查看评论","购买"],"menu":"低价急售列表","menuJump":"列表","tableName":"dijiajishou"}],"menu":"低价急售模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生二手","tableName":"xueshengershou"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
