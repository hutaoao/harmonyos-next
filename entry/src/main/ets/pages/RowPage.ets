import { router } from '@kit.ArkUI';

@Entry
@Component
struct RowPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('<返回')
        .onClick(() => {
          router.back()
        })
      Row({ space: 20 }) {
        Text()
          .width(30)
          .height(100)
          .backgroundColor(Color.Pink)
        Text()
          .width(30)
          .height(100)
          .backgroundColor(Color.Pink)
        Text()
          .width(30)
          .height(100)
          .backgroundColor(Color.Pink)
      }
      .width('100%')
      .height('100%')

      // 主轴对齐方式 Start/CenterEnd
      // .justifyContent(FlexAlign.Center)
      // .justifyContent(FlexAlign.SpaceBetween)
      // .justifyContent(FlexAlign.SpaceAround)
      .justifyContent(FlexAlign.SpaceEvenly)

      // 交叉轴对齐方式 Top/Center/Bottom
      // .alignItems(HorizontalAlign.Start)
      .alignItems(VerticalAlign.Bottom)
    }
  }
}