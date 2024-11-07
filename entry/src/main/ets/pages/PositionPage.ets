import { router } from '@kit.ArkUI';

@Entry
@Component
struct PositionPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('<返回')
        .onClick(() => {
          router.back()
        })
      Text('one')
        .width(80)
        .height(80)
        .backgroundColor(Color.Orange)
        .position({
          x: 50,
          y: 50
        })
        .zIndex(9)
      Text('two')
        .width(80)
        .height(80)
        .backgroundColor(Color.Blue)
      Text('three')
        .width(80)
        .height(80)
        .backgroundColor(Color.Green)
    }
    .width(300)
    .height(300)
    .backgroundColor(Color.Pink)
  }
}