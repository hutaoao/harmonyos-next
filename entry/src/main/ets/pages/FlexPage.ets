import { router } from '@kit.ArkUI';

@Entry
@Component
struct FlexPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text('<返回')
        .onClick(() => {
          router.back()
        })
      Flex({
        wrap: FlexWrap.Wrap,
        justifyContent: FlexAlign.Start
      }) {
        Text('探索')
          .margin(5)
          .padding({
            left: 10,
            right: 10,
            top: 5,
            bottom: 5
          })
          .border({
            width: 1,
          })
        Text('生态合作')
          .margin(5)
          .padding({
            left: 10,
            right: 10,
            top: 5,
            bottom: 5
          })
          .border({
            width: 1,
          })
        Text('开发')
          .margin(5)
          .padding({
            left: 10,
            right: 10,
            top: 5,
            bottom: 5
          })
          .border({
            width: 1,
          })
        Text('推广与变现')
          .margin(5)
          .padding({
            left: 10,
            right: 10,
            top: 5,
            bottom: 5
          })
          .border({
            width: 1,
          })
        Text('图标库')
          .margin(5)
          .padding({
            left: 10,
            right: 10,
            top: 5,
            bottom: 5
          })
          .border({
            width: 1,
          })
        Text('支持')
          .margin(5)
          .padding({
            left: 10,
            right: 10,
            top: 5,
            bottom: 5
          })
          .border({
            width: 1,
          })
      }
    }
  }
}