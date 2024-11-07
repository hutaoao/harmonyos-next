@Component
export default  struct Content {
  build() {
    List() {
      ListItem() {
        Text('2333')
      }
    }
    .width('100%')
    .layoutWeight(1)
    .backgroundColor(Color.Pink)
  }
}