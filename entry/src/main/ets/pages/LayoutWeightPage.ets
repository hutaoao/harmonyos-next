import { router } from '@kit.ArkUI';

@Entry
@Component
struct LayoutWeightPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('<返回')
        .onClick(() => {
          router.back()
        })
      // LayoutWeight自适应伸缩
      Row() {
        Text('左侧')
          .layoutWeight(1)
        Text('搜索')
          .width(60)
          .height(40)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Orange)
      }
      .width(300)
      .height(40)
      .backgroundColor(Color.White)
      .margin({ top: 100 })

      Row() {
        Text('one')
          .height(40)
          .layoutWeight(1)
        Text('two')
          .height(40)
          .layoutWeight(2)
          .backgroundColor(Color.Pink)
        Text('three')
          .height(40)
          .layoutWeight(3)
          .backgroundColor(Color.Orange)
      }
      .width(300)
      .height(40)
      .backgroundColor(Color.White)
      .margin({ top: 100 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Grey)
  }
}