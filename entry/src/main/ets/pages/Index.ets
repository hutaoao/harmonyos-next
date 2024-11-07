import { router, LengthMetrics } from '@kit.ArkUI';
import { MyButton } from './components/MyButton';
import SonCom from './components/SonCom';
import font from '@ohos.font';

@Extend(Text)
function titleStyle() {
  .fontWeight(FontWeight.Bold)
  .margin({bottom: 5, top: 15})
}

@Extend(Text)
function commonStyle(url: string) {
  .padding({
    top: 5,
    bottom: 5,
    left: 10,
    right: 10
  })
  .border({
    width: 1,
    color: Color.Gray
  })
  .borderRadius(10)
  .onClick(() => {
    router.pushUrl({ url })
  })
}

// 外部/全局变量 需要使用 let 声明
let name = '外部变量';

@Entry
@Component
struct Index {
  // 组件内普通变量 无需使用 let 声明
  str = '组件内普通变量';
  // 组件内的状态变量，使用 @State 装饰器，通过 this 访问
  @State age: number = 0;
  @State info: string = 'hello';
  @State number: number = 1;
  @State list: string[] = ['张三', '李四', '王五'];

  // 组件加载时自动调用
  aboutToAppear(): void {
    // 图标字体注册 - 前往SVG页面查看示例
    font.registerFont({
      familyName: 'iconfont',
      familySrc: '/fonts/iconfont.ttf'
    })
  }

  build() {
    Column({ space: 5 }) {
      Text(name)
      Text(this.str)
      Text('条件渲染：').titleStyle()
      Row({ space: 10 }) {
        MyButton({
          text: '减少',
          handleClick: () => {
            console.log('8888');
            this.number = --this.number
          }
        })
        Text(this.number.toString())
        MyButton({
          text: '增加',
          handleClick: () => {
            console.log('8888');
            this.number = ++this.number
          }
        })
        if (this.number > 0) {
          Text('条件渲染-大于零').fontColor(Color.Orange)
        } else {
          Text('条件渲染-小于等于零').fontColor(Color.Red)
        }
      }

      Text('遍历渲染：').titleStyle()
      Row() {
        ForEach(this.list, (item: string, index: number) => {
          Text(`${index + 1} ${item} `)
        })
      }

      Text('组件传值：info=' + this.info + ',age=' + this.age).titleStyle()
      SonCom({
        age: this.age,
        info: this.info,
        // 必须使用箭头函数，否则this指向会有问题
        changeInfo: (newInfo: string) => {
          this.info = newInfo;
        }
      })

      Text('组件示例：').titleStyle()
      Scroll() {
        Flex({
          wrap: FlexWrap.Wrap,
          space: { main: LengthMetrics.px(50), cross: LengthMetrics.px(50) }
        }) {
          Text('通用属性').commonStyle('pages/CommonAttrPage')
          Text('Text/文本').commonStyle('pages/TextPage')
          Text('Row/行').commonStyle('pages/RowPage')
          Text('Column/列').commonStyle('pages/ColumnPage')
          Text('Flex').commonStyle('pages/FlexPage')
          Text('Image/图片').commonStyle('pages/ImagePage')
          Text('LayoutWeight/自适应伸缩').commonStyle('pages/LayoutWeightPage')
          Text('TextInput/输入框').commonStyle('pages/LoginPage')
          Text('Position/定位').commonStyle('pages/PositionPage')
          Text('Svg/定位').commonStyle('pages/SvgPage')
          Text('Stack/层叠').commonStyle('pages/StackPage')
          Text('Swiper/轮播').commonStyle('pages/SwiperPage')
          Text('@Extend/扩展组件-样式/事件').commonStyle('pages/ExtendPage')
          Text('@Style/抽取通用属性、事件').commonStyle('pages/StylePage')
          Text('@Build/自定义构建函数-结构、样式、事件').commonStyle('pages/BuilderPage')
          Text('Scroll/滚动容器').commonStyle('pages/ScrollPage')
          Text('List+ListIte/滚动容器').commonStyle('pages/ListPage')
          Text('Tabs/页签组件').commonStyle('pages/TabsPage')
          Text('@BuilderParam/外部传递UI').commonStyle('pages/BuilderParamPage')
          Text('@Provide、@Consume/数据传递给后代组件进行双向绑定').commonStyle('pages/ProvidePage')
          Text('掘金评论demo').commonStyle('pages/JueJinPage')
        }
        .padding({
          left: 20,
          right: 20
        })
      }
      .height(300)
      .edgeEffect(EdgeEffect.Fade)
    }
    .padding(5)
    .alignItems(HorizontalAlign.Start)
  }
}