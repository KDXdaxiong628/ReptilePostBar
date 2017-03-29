# 爬虫爬取百度贴吧小说

import urllib, requests
import urllib.request
import re

class BDTB:
    baseUrl = 'https://tieba.baidu.com/p/4945553679?see_lz=1'
    baseTitle = ''

    # 打开网页获取源码
    # 在类的下面，你自定义函数，会有self， 可以理解为自己。可能函数还有参数，但是必须要位于第一位
    def getPage(self):
        try: # 为了保险，不写 try except也可以，因为有时候没网，就会报错，有了try except就会报原因
            url = self.baseUrl
            # temp_html = urllib.request.Request(url) #用地址创建对象
            # response = urllib.request.urlopen(temp_html).read()
            # 视频是上面的方法，但是下载下来的网页不是str类型 ，而是字节类型，导致匹配的时候报错。所以自己写成了下面的方法
            temp_html = requests.get(url).text
            return temp_html
        except Exception as e:
            print(e)

    # 匹配标题
    def Title(self):
        global baseTitle
        html = self.getPage() #调用获取源码
        # compile 编译，匹配，提高效率
        title_reg = re.compile(r'<h3 class="core_title_txt pull-left text-overflow  " title="(.*?)" style=')
        title_items = re.findall(title_reg, html)
        baseTitle = title_items[0]
        # 写入文本 不用新建，因为用了下面的模式就会自动新建 w 是指 写入模式
        f = open('%s.txt' % baseTitle, 'w')
        f.write('标题' + '\t' + baseTitle)
        f.close()

    # 匹配正文
    def Text(self):
        html = self.getPage()
        text_reg = re.compile(r'class="d_post_content j_d_post_content ">            (.*?)</div><br>', re.S)
        text_items = re.findall(text_reg, html)
        for i in text_items:
            q = re.compile(r'<a.*?>|</a>')
            t = re.compile(r'<img.*?>')
            y = re.compile(r'http.*?')
            i = re.sub(q, "", i)
            i = re.sub(t, "", i)
            i = re.sub(y, "", i)
            i = i.replace('<br>', "")

            f = open('%s.txt' % baseTitle, 'a') # a 模式表示追加
            f.write('\n\n' + i)
            f.close()

print('爬虫正在启动...')

# 实例化这个类
bdtb = BDTB()
bdtb.getPage()
bdtb.Title()
bdtb.Text()