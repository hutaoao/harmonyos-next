import { router } from '@kit.ArkUI'

@Entry
@Component
struct Second {
  @State message: string = 'Hi there'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button() {
          Text('返回')
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#fff51d1d')
        .width('40%')
        .height('6%')
        .onClick(() => {
          router.back()
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}