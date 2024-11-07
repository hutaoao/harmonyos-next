import { router } from '@kit.ArkUI';

@Entry
@Component
struct SvgPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('<返回')
        .onClick(() => {
          router.back()
        })
      Text('使用本地SVG')
        .fontSize(30)
      Row() {
        Image($r('app.media.tab_mine'))
          .width(50)
          .fillColor(Color.Orange)
        Image($r('app.media.tab_gzt'))
          .width(50)
        Image($r('app.media.icon_message'))
          .width(50)
        Image($r('app.media.icon_company'))
          .width(50)
      }

      Text('使用HarmonyOS图标库')
        .fontSize(30)
        .margin({ top: 20 })
      Text('https://developer.huawei.com/consumer/cn/design/harmonyos-icon/')

      Text('使用iconfont图标库')
        .fontSize(30)
        .margin({ top: 20 })
      Text('\ue600')
        .fontFamily('iconfont')
        .fontSize(30)
        .fontColor(Color.Red)
        .fontWeight(FontWeight.Bold)
      Text('\ue8b9')
        .fontFamily('iconfont')
        .fontSize(30)
        .fontColor(Color.Red)
    }
    .alignItems(HorizontalAlign.Start)
  }
}