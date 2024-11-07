import { router } from '@kit.ArkUI';

@Entry
@Component
struct StackPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('<返回')
        .onClick(() => {
          router.back()
        })
      Stack({
        alignContent: Alignment.BottomEnd
      }) {
        Text('one')
          .width(250)
          .height(250)
          .backgroundColor(Color.Red)
        // .zIndex(9)
        Text('two')
          .width(150)
          .height(150)
          .backgroundColor(Color.Yellow)
        Text('three')
          .width(50)
          .height(50)
          .backgroundColor(Color.Black)
      }
      .width(300)
      .height(500)
      .backgroundColor(Color.Pink)
    }
  }
}