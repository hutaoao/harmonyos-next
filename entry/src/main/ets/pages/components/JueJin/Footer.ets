@Component
export default struct Footer {
  @State txt: string = ''
  onSubmitComment = (content: string) => {}

  build() {
    Row() {
      Row() {
        Text('\ue601')
          .fontFamily('iconfont')
          .fontSize(20)
          .fontColor(Color.Black)
        TextInput({
          placeholder: '写评论...',
          text: $$this.txt // 双向绑定 - $$
        })
          .backgroundColor('#f5f6f5')
          .onSubmit(() => {
            this.onSubmitComment(this.txt)
          })
      }
      .layoutWeight(1)
      .backgroundColor('#f5f6f5')
      .borderRadius(20)
      .padding({ left: 15, right: 15 })

      Text('\ue600')
        .fontFamily('iconfont')
        .fontSize(20)
        .margin({ left: 30, right: 10 })
      Text('\ue8b9')
        .fontFamily('iconfont')
        .fontSize(20)
    }
    .width('100%')
    .padding({
      left: 10,
      right: 10,
      top: 10,
      bottom: 10
    })
  }
}