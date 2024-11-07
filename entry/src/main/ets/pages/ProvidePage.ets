@Entry
@Component
struct ProvidePage {
  @Provide theme: string = 'red';

  build() {
    Column() {
      Text('父组件')
        .fontSize(30)
      Row({ space: 20 }) {
        Text('主题：' + this.theme)
        Button('修改主题')
          .onClick(() => {
            this.theme = 'white'
          })
      }

      Child()
      Child()
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#eee')
  }
}

@Component
struct Child {
  @Consume theme: string

  build() {
    Column() {
      Text('子组件')
        .fontSize(25)
      Row({ space: 20 }) {
        Text('主题：' + this.theme)
        Button('修改主题')
          .onClick(() => {
            this.theme = 'blue'
          })
      }

      Grandson()
    }
    .width('80%')
    .height(250)
    .borderRadius(20)
    .backgroundColor('#ff82d9b3')
    .margin({ top: 40 })
  }
}

@Component
struct Grandson {
  @Consume theme: string

  build() {
    Column({ space: 10 }) {
      Text('孙组件')
        .fontSize(20)
      Row({ space: 20 }) {
        Text('主题：' + this.theme)
        Button('修改主题')
          .onClick(() => {
            this.theme = 'green'
          })
      }
    }
    .width('80%')
    .height(100)
    .borderRadius(20)
    .backgroundColor('#ffd99bde')
    .margin({ top: 40 })
    .justifyContent(FlexAlign.Center)
  }
}