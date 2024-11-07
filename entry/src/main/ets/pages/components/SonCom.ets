// 自定义组件
@Component
export default struct SonCom {
  // 单向传递
  // 只组件可以修改，但无法传递给父组件，只能通过传递方法
  @Prop info: string
  // 双向传递
  @Link age: number
  changeInfo = (newInfo: string) => {

  }

  build() {
    Column() {
      Text('我是子组件，info：' + this.info + ',age=' + this.age)
      Row({ space: 10 }) {
        Button('修改')
          .onClick(() => this.changeInfo('改啦'))
        Button('修改Prop/无意义')
          .onClick(() => {
            // 一般情况下 无意义
            this.info = '再次改啦'
          })
        Button('修改Link')
          .onClick(() => {
            this.age = this.age += 1;
          })
      }
    }
    .padding(10)
    .border({
      width: 1,
      color: Color.Orange
    })
  }
}