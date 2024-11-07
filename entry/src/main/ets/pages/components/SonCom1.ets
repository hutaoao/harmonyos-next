// 自定义组件
@Component
export default  struct SonCom1 {
  // 定义BuilderParam 接受外部传入的UI，并设置默认值
  @BuilderParam ContentBuilder: () => void = this.defaultBuilder

  // 默认的Builder
  @Builder
  defaultBuilder() {
    Text('默认的内容')
  }

  build() {
    Column(){
      Text('@BuilderParam/单个示例')
      this.ContentBuilder()
    }
  }
}