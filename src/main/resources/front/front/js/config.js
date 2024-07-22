
var projectName = '博物馆信息管理系统';
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
	url: '../' + localStorage.getItem('userTable') + '/center.html'
}, 
{
        name: '我的收藏',
        url: '../storeup/list.html'
}
]


var indexNav = [

{
	name: '工作人员',
	url: './pages/gongzuorenyuan/list.html'
}, 
{
	name: '展览信息',
	url: './pages/zhanlanxinxi/list.html'
}, 
{
	name: '藏品信息',
	url: './pages/zangpinxinxi/list.html'
}, 
{
	name: '参观人数',
	url: './pages/canguanrenshu/list.html'
}, 

{
	name: '公告信息',
	url: './pages/news/list.html'
},
]

var adminurl =  "http://localhost:8080/springboot5237s/admin/dist/index.html";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"工作人员","menuJump":"列表","tableName":"gongzuorenyuan"}],"menu":"工作人员管理"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除"],"menu":"展览信息","menuJump":"列表","tableName":"zhanlanxinxi"}],"menu":"展览信息管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["新增","查看","修改","删除"],"menu":"排班信息","menuJump":"列表","tableName":"paibanxinxi"}],"menu":"排班信息管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","修改","删除"],"menu":"预约记录","menuJump":"列表","tableName":"yuyuejilu"}],"menu":"预约记录管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["新增","查看","修改","删除"],"menu":"藏品信息","menuJump":"列表","tableName":"zangpinxinxi"}],"menu":"藏品信息管理"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["新增","查看","修改","删除","报表"],"menu":"参观人数","menuJump":"列表","tableName":"canguanrenshu"}],"menu":"参观人数管理"},{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"工作人员列表","menuJump":"列表","tableName":"gongzuorenyuan"}],"menu":"工作人员模块"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","预约参观"],"menu":"展览信息列表","menuJump":"列表","tableName":"zhanlanxinxi"}],"menu":"展览信息模块"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看"],"menu":"藏品信息列表","menuJump":"列表","tableName":"zangpinxinxi"}],"menu":"藏品信息模块"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看"],"menu":"参观人数列表","menuJump":"列表","tableName":"canguanrenshu"}],"menu":"参观人数模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看"],"menu":"展览信息","menuJump":"列表","tableName":"zhanlanxinxi"}],"menu":"展览信息管理"},{"child":[{"appFrontIcon":"cuIcon-circle","buttons":["查看"],"menu":"排班信息","menuJump":"列表","tableName":"paibanxinxi"}],"menu":"排班信息管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","审核"],"menu":"预约记录","menuJump":"列表","tableName":"yuyuejilu"}],"menu":"预约记录管理"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看"],"menu":"参观人数","menuJump":"列表","tableName":"canguanrenshu"}],"menu":"参观人数管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"工作人员列表","menuJump":"列表","tableName":"gongzuorenyuan"}],"menu":"工作人员模块"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","预约参观"],"menu":"展览信息列表","menuJump":"列表","tableName":"zhanlanxinxi"}],"menu":"展览信息模块"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看"],"menu":"藏品信息列表","menuJump":"列表","tableName":"zangpinxinxi"}],"menu":"藏品信息模块"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看"],"menu":"参观人数列表","menuJump":"列表","tableName":"canguanrenshu"}],"menu":"参观人数模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"工作人员","tableName":"gongzuorenyuan"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["查看","修改"],"menu":"预约记录","menuJump":"列表","tableName":"yuyuejilu"}],"menu":"预约记录管理"},{"child":[{"appFrontIcon":"cuIcon-favor","buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"工作人员列表","menuJump":"列表","tableName":"gongzuorenyuan"}],"menu":"工作人员模块"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","预约参观"],"menu":"展览信息列表","menuJump":"列表","tableName":"zhanlanxinxi"}],"menu":"展览信息模块"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看"],"menu":"藏品信息列表","menuJump":"列表","tableName":"zangpinxinxi"}],"menu":"藏品信息模块"},{"child":[{"appFrontIcon":"cuIcon-pay","buttons":["查看"],"menu":"参观人数列表","menuJump":"列表","tableName":"canguanrenshu"}],"menu":"参观人数模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


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
