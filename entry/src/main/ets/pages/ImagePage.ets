import { router } from '@kit.ArkUI';

@Entry
@Component
struct ImagePage {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Column() {
        Text('<返回')
          .onClick(() => {
            router.back()
          })
        // 使用网络图片
        Image('https://img2.baidu.com/it/u=1544882228,2394903552&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500')
          .width('100%')
        Column() {
          Image($r('app.media.app_icon'))
            .width(200)
          Text('浙江小塔集团')
            .width('100%')
        }
        .alignItems(HorizontalAlign.Start)
      }
    }
    .height('100%')
    .width('100%')
  }
}