import { JueJinData } from '../../../model/JueJinData'

@Component
struct InfoItem {
  @Prop index: number
  @ObjectLink itemObj: JueJinData
  onLikeClick = (index: number) => {
  }

  build() {
    Row() {
      Image(this.itemObj.avatar)
        .width(30)
        .aspectRatio(1)
        .borderRadius(15)
        .margin({ right: 10 })
      Column() {
        Row() {
          Text(this.itemObj.name)
            .fontSize(13)
            .fontColor(Color.Gray)
            .margin({ top: 5, right: 15 })
          Text(this.itemObj.levelStr)
            .fontSize(13)
            .fontColor(Color.Gray)
            .margin({ top: 5 })
            .border({
              width: 1,
              color: Color.Pink
            })
            .borderRadius(10)
            .padding({
              left: 10,
              right: 10,
              top: 3,
              bottom: 3
            })
        }

        Text(this.itemObj.commentTxt)
          .margin({ top: 10, bottom: 10 })
          .maxLines(2)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
        Row() {
          Text(this.itemObj.timeStr)
            .fontSize(12)
            .fontColor(Color.Grey)
          Row() {
            Image($r('app.media.like'))
              .width(20)
              .margin({ right: 5 })
              .fillColor(this.itemObj.isLike ? Color.Red : Color.Gray)
            Text(this.itemObj.likeNum.toString())
              .fontColor(this.itemObj.isLike ? Color.Red : Color.Gray)
          }
          .onClick(() => {
            this.onLikeClick(this.index)
          })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .margin({ top: 10 })
    .alignItems(VerticalAlign.Top)
  }
}

export default InfoItem