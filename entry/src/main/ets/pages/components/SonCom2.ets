// 自定义组件
// 多个 @BuilderParam
@Component
export default  struct SonCom2 {
  // 定义BuilderParam 接受外部传入的UI，并设置默认值
  @BuilderParam tBuilder: () => void = this.tDefaultBuilder
  @BuilderParam cBuilder: () => void = this.cDefaultBuilder

  // 默认的Builder
  @Builder
  tDefaultBuilder() {
    Text('T的默认的内容')
  }

  @Builder
  cDefaultBuilder() {
    Text('C的默认的内容')
  }

  build() {
    Column(){
      Text('@BuilderParam/多个示例')
      this.tBuilder()
      this.cBuilder()
    }
  }
}