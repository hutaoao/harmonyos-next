@Observed
export class JueJinData {
  avatar: ResourceStr // 头像
  name: string
  level: number
  likeNum: number
  commentTxt: string
  isLike: boolean
  levelStr: string
  time: number
  timeStr: string

  constructor(avatar: ResourceStr, name: string, level: number, likeNum: number, commentTxt: string, isLike: boolean,
    time: number) {
    this.avatar = avatar
    this.name = name
    this.likeNum = likeNum
    this.commentTxt = commentTxt
    this.isLike = isLike
    this.level = level
    this.levelStr = this.convertLevel(level)
    this.time = time
    this.timeStr = this.convertTime(time)
  }

  convertTime(timestamp: number): string {
    // 获取当前的时间戳
    const currentTimestamp = new Date().getTime();
    const timeDifference = (currentTimestamp - timestamp) / 1000; //转换为秒
    if (timeDifference < 0 || timeDifference == 0) {
      return "刚刚";
    } else if (timeDifference < 60) {
      return `$｛Math.floor(timeDifference)｝秒前`
    } else if (timeDifference < 3600) {
      return `${Math.floor(timeDifference / 60)}分钟前`
    } else if (timeDifference < 86400) {
      return `${Math.floor(timeDifference / 3600)}小时前`
    } else if (timeDifference < 604800) {
      return `${Math.floor(timeDifference / 86400)}天前`
    } else if (timeDifference < 2592000) {
      return `${Math.floor(timeDifference / 604800)}周前`
    } else if (timeDifference < 31536000) {
      return `${Math.floor(timeDifference / 2592000)}个月前`
    } else {
      return `${Math.floor(timeDifference / 31536000)}年前`
    }
  }

  convertLevel(level: number): string {
    const levelList = ['一级', '二级', '三级', '四级', '五级', '六级']
    return levelList[level - 1]
  }
}

// 模拟数据
export const createListRange = (): JueJinData[] => {
  let result: JueJinData[] = [
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 5, 6, '当地时间11月5日，美国总统大选计票正在进行', false, 1730875157399),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 2, 2, '根据多家美媒最新公布', false, 1704153600000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 4, 45, '特朗普目前已获得198张选举人票，哈里斯得票数暂为99张。', false, 1728604800000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 2, 54, '截至发稿，美国共和党总统候选人、前总统特朗普赢得了', false, 1729468800000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 6, 5, '肯塔基州、印第安纳州、西弗吉尼亚州、亚拉巴马州、密西西比州、南卡罗来纳州、俄克拉何马州、佛罗里达州、田纳西州、阿肯色州、怀俄明州、路易斯安那州、南达科他州、北达科他州、内布拉斯加州、俄亥俄州、得克萨斯州、密苏里州、犹他州、蒙大拿州。', false, 1729468800000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 2, 76, '内容', false, 1730476800000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 4, 24, '内容', false, 1730736000000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 4, 75, '内容', false, 1729468800000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 3, 46, '内容', false, 1730875157399),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 1, 3, '内容', false, 1704153600000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 2, 89, '内容', false, 1728604800000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 4, 33, '内容', false, 1729468800000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 6, 16, '内容', false, 1729468800000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 1, 45, '内容', false, 1730476800000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 3, 26, '内容', false, 1730736000000),
    new JueJinData($r('app.media.app_icon'), '黑暗王国', 4, 74, '内容', false, 1729468800000),
  ];

  return result;
}