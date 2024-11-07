import { router } from '@kit.ArkUI';

@Entry
@Component
struct CommonAttrPage {
  @State message: string = 'Hello World';

  build() {
    Scroll() {
      Column({ space: 10 }) {
        Text('<返回')
          .onClick(() => {
            router.back()
          })
        Text(this.message)
          .id('HelloWorld')
          .fontSize(30)
          .fontColor(Color.Green)
          .fontWeight(FontWeight.Bold)

        Text('内边距')
          .backgroundColor(Color.Blue)
          .padding(20)
          .fontColor(Color.White)
        Text('外边距')
          .backgroundColor(Color.Blue)
          .margin({ left: 30 })
          .fontColor(Color.White)
        Text('边框')
          .width(100)
          .height(50)
          .textAlign(TextAlign.Center)
          .border({
            width: 2,
            color: '#333333',
            style: BorderStyle.Dotted
          })
        Text('单边框')
          .width(100)
          .height(50)
          .textAlign(TextAlign.Center)
          .border({
            width: { right: 2, left: 1 },
            color: '#333333',
            style: {
              left: BorderStyle.Dotted,
              right: BorderStyle.Solid,
            }
          })
        Text('圆角-正圆')// 宽高一致
          .width(80)
          .height(80)
          .borderRadius(50)
          .border({
            width: 2,
            color: '#ffea4d4d',
            style: BorderStyle.Solid
          })
          .textAlign(TextAlign.Center)

        Text('不同圆角')
          .width(80)
          .height(80)
          .borderRadius({
            topLeft: 20,
            bottomRight: 40
          })
          .border({
            width: 2,
            color: '#ffea4d4d',
            style: BorderStyle.Solid
          })
          .textAlign(TextAlign.Center)

        Text('背景图-默认左上角')
          .width(200)
          .height(100)
          .backgroundColor(Color.Pink)
          .backgroundImage($r('app.media.app_icon'))
        Text('背景图-设置坐标')
          .width('200vp')
          .height('150vp')
          .backgroundColor(Color.Pink)
          .backgroundImage($r('app.media.app_icon'))
          .backgroundImagePosition({ x: vp2px(10), y: vp2px(20) })
        Text('背景图-Aliment')
          .width(200)
          .height(150)
          .backgroundColor(Color.Pink)
          .backgroundImage($r('app.media.app_icon'))
          .backgroundImagePosition(Alignment.BottomEnd)
        Text('背景图-ImageRepeat')
          .width(200)
          .height(200)
          .backgroundColor(Color.Pink)
          .backgroundImage($r('app.media.app_icon'), ImageRepeat.XY)
        Text('背景图-backgroundImageSize')
          .width(200)
          .height(100)
          .backgroundColor(Color.Pink)
          .backgroundImage($r('app.media.app_icon'))
          .backgroundImageSize(ImageSize.FILL)
      }
      .width('100%')
      .alignItems(HorizontalAlign.Start)
      .padding(20)
    }
  }
}