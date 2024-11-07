import Header from './components/JueJin/Header';
import Footer from './components/JueJin/Footer';
import Content from './components/JueJin/Content';
import InfoItem from './components/JueJin/InfoItem';
import { font } from '@kit.ArkUI';
import { JueJinData, createListRange } from '../model/JueJinData';

@Entry
@Component
struct JueJinPage {
  @State dataList: JueJinData[] = createListRange();

  aboutToAppear(): void {
    // 图标字体注册 - 前往SVG页面查看示例
    font.registerFont({
      familyName: 'iconfont',
      familySrc: '/fonts/iconfont.ttf'
    })
  }

  // 点赞
  // 方式一和方式二都会导致整个List重新渲染，会有闪烁现象
  // 推荐使用方式三 局部修改
  handleLike(index: number) {
    // 方式一
    // let newList = [...this.dataList];
    // let dataItem = newList[index];

    // 方式二
    let dataItem = this.dataList[index];
    if (dataItem.isLike) {
      dataItem.likeNum -= 1
    } else {
      dataItem.likeNum += 1
    }
    dataItem.isLike = !dataItem.isLike
    // 方式一
    // this.dataList = newList

    // 方式二
    // this.dataList.splice(index, 1, dataItem);

    // 方式三 InfoItem组件使用 @ObjectLink 装饰，局部更新
  }

  // 提交评论
  handleSubmitComment(content: string) {
    console.log(content)
    const newItem: JueJinData =
      new JueJinData($r('app.media.app_icon'), '黑暗王国', 2, 2, content, false, new Date().getTime())
    this.dataList = [newItem, ...this.dataList]
  }

  // 排序 0/最新 1/最热
  handleSort(type: number) {
    if (type === 0) {
      this.dataList.sort((a, b) => {
        return b.time - a.time
      })
    } else {
      this.dataList.sort((a, b) => {
        return b.likeNum - a.likeNum
      })
    }
  }

  build() {
    Column() {
      Header({
        onSort: (type: number) => {
          this.handleSort(type)
        }
      })
      // Content()
      List() {
        ForEach(this.dataList, (item: JueJinData, index: number) => {
          ListItem() {
            InfoItem({
              index,
              itemObj: item,
              onLikeClick: (index: number) => {
                this.handleLike(index)
              }
            })
          }
        })
      }
      .padding(10)
      .layoutWeight(1)

      Footer({
        onSubmitComment: (content: string) => {
          this.handleSubmitComment(content)
        }
      })
    }
    .width('100%')
    .height('100%')
  }
}