import { router } from '@kit.ArkUI';

@Extend(Text)
function textFn(bgColor: ResourceColor, msg: string) {
  .fontSize(30)
  .fontColor(Color.White)
  .fontWeight(FontWeight.Bold)
  .textAlign(TextAlign.Center)
  .backgroundColor(bgColor)
  .onClick(() => {
    AlertDialog.show({
      message: msg
    })
  })
}

@Entry
@Component
struct ExtendPage {
  @State message: string = 'Hello World';

  build() {
    Column({ space: 20 }) {
      Text('<返回')
        .onClick(() => {
          router.back()
        })

      // Swiper 设置尺寸
      Swiper() {
        Text('1')
          .textFn(Color.Red, '轮播图1')
        Text('2')
          .textFn(Color.Blue, '轮播图2')
        Text('3')
          .textFn(Color.Green, '轮播图3')
      }
      .width('100%')
      .height(200)
      .loop(true) // 自动循环
      .autoPlay(true) // 开启轮播
    }
  }
}