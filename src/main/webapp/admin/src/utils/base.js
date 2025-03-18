const base = {
    get() {
                return {
            url : "http://localhost:8080/ssm80z17/",
            name: "ssm80z17",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm80z17/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "遂川特产销售系统"
        } 
    }
}
export default base
