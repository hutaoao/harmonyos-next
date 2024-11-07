@Extend(Button)
function btnExtend(isOn: boolean) {
  .width(46)
  .height(32)
  .fontSize(12)
  .padding({ left: 5, right: 5 })
  .backgroundColor(isOn ? '#fff' : '#f7f8fa')
  .fontColor(isOn ? '#2f2e33' : '#8e9289')
  .border({ width: 1, color: isOn ? '#e4e5e6' : '#f7f8fa' })
}


@Component
export default struct Header {
  @State isOn: boolean = true
  onSort = (type: number) => {}

  build() {
    Row() {
      Text('全部评论')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
      Row() {
        Button('最新', { stateEffect: false }).btnExtend(this.isOn)
          .onClick(() => {
            this.isOn = true
            this.onSort(0)
          })
        Button('最热', { stateEffect: false }).btnExtend(!this.isOn)
          .onClick(() => {
            this.isOn = false
            this.onSort(1)
          })
      }
      .backgroundColor('#f7f8fa')
      .borderRadius(20)
    }
    .width('100%')
    .height(50)
    .padding(10)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}