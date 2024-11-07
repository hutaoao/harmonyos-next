import { router } from '@kit.ArkUI';

@Extend(Text)
function textFn() {
  .fontSize(30)
  .fontColor(Color.White)
  .fontWeight(FontWeight.Bold)
  .textAlign(TextAlign.Center)
}

@Entry
@Component
struct SwiperPage {
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
          .fontSize(30)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Red)
        Text('2')
          .fontSize(30)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Blue)
        Text('3')
          .fontSize(30)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Green)
      }
      .width('100%')
      .height(200)
      .loop(true) // 自动循环
      .autoPlay(true) // 开启轮播
      .vertical(true) // 纵向

      Swiper() {
        Image($r('app.media.banner1'))
        Image($r('app.media.banner2'))
        Image($r('app.media.banner1'))
        Image($r('app.media.banner2'))
      }
      .backgroundColor(Color.Gray)
      .width('100%')
      // .height(100)
      .aspectRatio(2.85) // 设置宽高比 保证图片的宽高比
      .loop(true) // 自动循环
      .autoPlay(true) // 开启轮播
      .interval(2000) // 循环间隔
      // 定制小圆点
      // .indicator(false) // 关闭指示器
      .indicator(
        Indicator.dot()
          .itemWidth(20)
          .itemHeight(20)
          .color(Color.White)
          .selectedItemWidth(50)
          .selectedItemHeight(20)
          .selectedColor(Color.Blue)
      )
    }
  }
}