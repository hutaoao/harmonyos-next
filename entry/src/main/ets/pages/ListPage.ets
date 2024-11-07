@Entry
@Component
struct ListPage {
  @State message: string = 'Hello World';

  build() {
    List() {
      ForEach(Array.from({ length: 20 }), (item: string, index: number) => {
        ListItem() {
          Text(`${index + 1}`).width('80%').height(100).backgroundColor(Color.Pink)
        }
        .margin(10)
      })
    }
    .width('100%')
    .listDirection(Axis.Vertical) // 主轴方向
    .lanes(2, 5) // (列数， 间距)
    .alignListItem(ListItemAlign.Center) // 列对齐方式
    .divider({
      strokeWidth: 3, // 线宽
      color: Color.Orange, //颜色
      startMargin: 10, //左侧间距
      endMargin: 10 // 右侧间距
    })
  }
}