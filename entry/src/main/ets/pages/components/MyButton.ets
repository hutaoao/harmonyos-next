// 自定义组件
@Component
export struct MyButton {
  // 成员变量
  text: string = '默认文本'
  handleClick = () => {
    console.log('333')
  }

  build() {
    Button(this.text)
      .fontSize(16)
      .fontWeight(FontWeight.Bold)
      .onClick(() => this.handleClick())
  }
}