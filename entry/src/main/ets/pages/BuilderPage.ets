// 全局Builder
@Builder
function navItem(svg: ResourceStr, txt: string) {
  Column({ space: 10 }) {
    Image(svg)
      .width('80%')
    Text(txt)
      .fontSize(20)
  }
  .width('25%')
  .alignItems(HorizontalAlign.Center)
}

@Entry
@Component
struct BuilderPage {
  @State message: string = 'Hello World';

  // 内部 Builder
  @Builder
  navItem(svg: ResourceStr, txt: string) {
    Column({ space: 10 }) {
      Image(svg)
        .width('80%')
      Text(txt)
        .fontSize(20)
    }
    .width('25%')
    .alignItems(HorizontalAlign.Center)
  }

  build() {
    Column({ space: 20 }) {
      Text('@Builder')
        .fontSize(30)

      Row() {
        navItem($r('app.media.icon_message'), '消息')
        navItem($r('app.media.icon_company'), '公司')
        this.navItem($r('app.media.tab_mine'), '我的')
        this.navItem($r('app.media.tab_gzt'), '工作台')
      }
    }
  }
}