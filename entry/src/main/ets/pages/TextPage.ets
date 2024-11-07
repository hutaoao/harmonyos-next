import { router } from '@kit.ArkUI';

@Entry
@Component
struct Page2 {
  @State message: string = '标题：重复的力量';

  build() {
    Column() {
      Text('<返回')
        .onClick(() => {
          router.back()
        })
      Text(this.message)
        .width('100%')// 设置为 100% 就能居左显示
        .fontSize(24)
        .height(40)
        .fontColor(Color.Black)
      Row() {
        Text('置顶')
          .fontColor('#ffee4242')
          .margin({
            right: 10
          })
        Text('新华社')
          .fontColor('#999999')
          .margin({
            right: 10
          })
        Text('4680评论')
      }
      .width('100%') // 设置为 100% 就能居左显示
      Text('这个孩子一开始的考试时候的语文成绩只能考六七十分，当时我接手这个孩子的时候真的很挠头，我就仔细看他的试卷，发现这孩子几乎是什么都不会的状态，常见的汉字都可以写错')
        .lineHeight(25)
        .maxLines(2) // 最大行数
        .textOverflow({
          overflow: TextOverflow.Ellipsis // 移出显示省略号
        })
        .margin({
          top: 20,
          bottom: 10
        })
      Text('这个孩子一开始的考试时候的语文成绩只能考六七十分，当时我接手这个孩子的时候真的很挠头，我就仔细看他的试卷，发现这孩子几乎是什么都不会的状态，常见的汉字都可以写错')
        .textOverflow({
          overflow: TextOverflow.MARQUEE // 跑马灯
        })
    }
  }
}