import { router } from '@kit.ArkUI';

@Extend(Text)
function textFn(bgColor: ResourceColor) {
  .width('100%')
  .height('100%')
  .backgroundColor(bgColor)
}

@Entry
@Component
struct TabsPage {
  titles: string[] = ['首页', '关注', '热门', '军事', '体育', '八卦', '数码', '财经', '美食', '旅行']
  @State selectIndex: number = 0;

  @Builder
  myTabBar(index: number, title: string, icon: ResourceStr) {
    Column({ space: 2 }) {
      Image(icon)
        .width(26)
        .fillColor(index === this.selectIndex ? Color.Red : Color.Grey)
      Text(title)
        .fontColor(index === this.selectIndex ? Color.Red : Color.Grey)
    }
  }

  build() {
    Column({ space: 30 }) {
      Text('<返回')
        .onClick(() => {
          router.back()
        })

      Tabs({
        barPosition: BarPosition.Start // Start/End
      }) {
        ForEach(this.titles, (item: string) => {
          TabContent() {
            Text(`${item}内容`)
          }
          .tabBar(item)
        })
      }
      .height(200)
      .barMode(BarMode.Scrollable) // 开启滚动

      Divider()

      Tabs({
        barPosition: BarPosition.End // Start/End
      }) {
        TabContent() {
          Text('首页内容')// 有且只能有一个
            .textFn(Color.Green)
        }
        .tabBar(this.myTabBar(0, '首页', $r('app.media.tab_gzt')))

        TabContent() {
          Text('消息内容')// 有且只能有一个
            .textFn(Color.Blue)
        }
        .tabBar(this.myTabBar(1, '消息', $r('app.media.icon_message')))

        TabContent() {
          Text('我的内容')// 有且只能有一个
            .textFn(Color.Pink)
        }
        .tabBar(this.myTabBar(2, '我的', $r('app.media.tab_mine')))
      }
      .vertical(false) // 导航水平或垂直
      .scrollable(false) // 开启手势
      .animationDuration(0) // 滑动动画时间
      .onChange((index: number) => {
        this.selectIndex = index;
      })
    }
    .height(200)
  }
}