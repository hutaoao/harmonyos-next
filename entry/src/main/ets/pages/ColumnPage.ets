import { router } from '@kit.ArkUI';

@Entry
@Component
struct ColumnPage {
  @State message: string = 'Hello World';

  build() {
    Column({space: 20}){
      Text('<返回')
        .onClick(() => {
          router.back()
        })
      Text()
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
      Text()
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
      Text()
        .width(200)
        .height(100)
        .backgroundColor(Color.Pink)
    }
    .width('100%')
    .height('100%')

    // 主轴对齐方式 Start/Center/End
    // .justifyContent(FlexAlign.Center)
    // .justifyContent(FlexAlign.SpaceBetween)
    // .justifyContent(FlexAlign.SpaceAround)
    .justifyContent(FlexAlign.SpaceEvenly)

    // 交叉轴对齐方式 Start/Center/End
    // .alignItems(HorizontalAlign.Start)
    .alignItems(HorizontalAlign.Center)
  }
}