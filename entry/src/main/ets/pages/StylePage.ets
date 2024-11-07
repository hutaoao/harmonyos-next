import { router } from '@kit.ArkUI';

// 抽取通用属性、方法

// 1、组件外定义
// @Styles
// function commonStyle() {
//   .width(100)
//   .height(100)
// }

@Entry
@Component
struct StylePage {
  @State message: string = 'Hello World';
  @State bgColor: ResourceColor = Color.Gray

  // 组件内定义 可以使用this访问内部状态
  @Styles
  commonStyle() {
    .width(100)
    .height(100)
    .backgroundColor(this.bgColor)
    .onClick(() => {
      this.bgColor = Color.Red
    })
  }

  build() {
    Column({ space: 20 }) {
      Text('<返回')
        .onClick(() => {
          router.back()
        })

      Text(this.message)
        .fontColor(Color.White)
        .commonStyle()

      Column() {
      }
      .commonStyle()

      Button() {
        Text('按钮').fontColor(Color.White)
      }
      .commonStyle()
    }
    .width('100%')
  }
}