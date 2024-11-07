import { router } from '@kit.ArkUI';

@Entry
@Component
struct ScrollPage {
  @State message: string = 'Hello World';
  myScroll: Scroller = new Scroller()

  build() {
    Column({ space: 20 }) {
      Text('<返回')
        .onClick(() => {
          router.back()
        })

      Scroll(this.myScroll) {
        Column({ space: 10 }) {
          ForEach(Array.from({ length: 10 }), (item: string, index: number) => {
            Text(`测试文本 ${index + 1}`)
              .width('100%')
              .height(100)
              .textAlign(TextAlign.Center)
              .backgroundColor(Color.Orange)
              .fontSize(20)
              .fontColor(Color.White)
              .borderRadius(10)
          })


        }
        .padding(10)
        .width('100%')
      }
      .height(500)
      // .scrollable(ScrollDirection.Horizontal) // 横向
      .scrollable(ScrollDirection.Vertical) // 纵向
      .scrollBar(BarState.Auto) // On-一直显示 Off-不限时 Auto-自动
      .scrollBarColor(Color.Blue) // 滚动条颜色
      .scrollBarWidth(6) // 滚动条宽度
      .edgeEffect(EdgeEffect.Spring) // 边缘效果 Spring/Fade
      .onDidScroll((xOffset: number, yOffset: number, scrollState: ScrollState) => {
        console.info(yOffset.toString())
      })

      Button('回到顶部')
        .onClick(() => {
          this.myScroll.scrollEdge(Edge.Top)
        })
      Button('获取已滚动的距离')
        .onClick(() => {
          const y = this.myScroll.currentOffset().yOffset
          AlertDialog.show({
            message: `Y: ${y}`
          })
        })
    }
  }
}