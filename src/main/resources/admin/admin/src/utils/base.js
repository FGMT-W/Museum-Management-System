const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot5237s/",
            name: "springboot5237s",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot5237s/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "湖北省博物馆管理系统"
        } 
    }
}
export default base
