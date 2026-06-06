# Seedance 提示词生成器

> 创意 → 完整短剧剧本 → AI 视频提示词 全链路生成器 · Claude Skill，同样适用于 ChatGPT / 其它 LLM

**简体中文** | [English](README.en.md)

> 本项目以 [liangdabiao/Seedance2-Storyboard-Generator](https://github.com/liangdabiao/Seedance2-Storyboard-Generator) 为基础，在 60 天内制作 60 个短视频、抖音涨粉 6000 的实战过程中，一点点学习、尝试、迭代完成。

专业的 **Seedance 2.0** AI 视频脚本与分镜提示词生成 Skill，覆盖「**创意 → 完整短剧剧本 → AI 视频提示词 → 成片**」全链路。上游可从一句创意/一篇小说写出 50-100 集完整短剧剧本（选题 / 付费卡点 / 爽点矩阵 / 反派体系 / 合规 / 出海）；下游把剧本、文章或故事大纲转换成可直接投喂给字节「小云雀」/ 即梦平台的标准剧本、资产生成提示词和时间轴分镜脚本。

> **可用平台**　国内：即梦、小云雀、LibTV；境外：Dreamina（即梦国际版）、CapCut、Higgsfield。
> 入口示例（小云雀）：App / 网页版 → 创作 → 模式 → **沉浸式短片（Seedance 2.0）**。

## 能做什么

覆盖「**创意 → 完整短剧剧本 → AI 视频提示词 → 成片**」全链路：

- **（上游·可选）一句创意/小说 → 完整短剧剧本**：从选题立项到分集撰写、质量自检、合规审核、海外出海，写出 50-100 集完整文学剧本（渐进式命令流 `/start /plan /characters /outline /episode /review /compliance /export`）。
- **文章/故事 → 视频脚本**：将完整文本或简短大纲改编为标准脚本格式（△镜头描述 + 对白 + OS/VO + 闪回 + 字幕）。
- **生成 Seedance 2.0 分镜提示词**：时间轴格式、音画一体、可直接复制使用。
- **多集系列规划**：短剧 5 集 ×15s、长剧 20 集 ×15s 的剧集分解与连续性管理。
- **资产生成提示词**：为 Nana Banana Pro / GPT-image 等图像模型批量生成角色（C01–C99）、场景（S01–S99）、道具（P01–P99）提示词。

## 核心特性

- **12 条生产铁律**（SKILL.md 顶部，最高优先级）：时长分段计算、续接残影加固、无字幕规则、对白时间轴对齐、审核规避、TTS 配音避坑、动作可分性、双人手部锁定、输出排版、声线锁定、**视听语言优先**、**提示词即视觉语言 · 去 AI 感**。
- **17 个提示词模板**（references/seedance-prompt-guide.md）：叙事 / 产品 / 角色 / 风景 / 战争 / 长镜头 / 伪纪录片 / **沉浸式短片（视听一体·八维黄金公式）** 等。
- **视听语言实战技巧库**（references/cinematic-techniques.md，由抖音「AI 视频教程」17 集创作者实操经验蒸馏）：景别分层、16 种运镜→情绪、8 种打光→情绪、7 种构图→作用 映射表，节奏与蒙太奇，活人感 / 情绪表情 / AI 配音公式，一致性硬控四步法，漫剧短剧工业化 SOP，**AI 短剧导演思维**（五大注意力钩子 + 短剧 Agent / 角色资产库 / 分镜节点工作流）。
- **提示词工程底层机制与去 AI 感技巧库**（references/prompt-craft-and-realism.md，由抖音「刺猬星球superi」37 集创作者实操经验蒸馏，"邪修"篇）：误解机制 / 词序等级 / 扰动词 / 鲁棒性破坏 / 伪透视词 / 时间词 / 特征塌陷 / 反着写提示词等底层控制法，光线控制、JSON 结构化生图、反推与风格提取、去摆拍感 / 前景遮挡 / 减法审美 / 剪词、数据化调色、动作与人物 / 声音一致性、导演思维。
- **Seedance 2.0 提示词配方手册**（references/seedance2-prompt-cookbook.md，由抖音「Seedance2 教学计划」14 集创作者实操经验蒸馏）：可照抄的「关键词触发」配方——运镜 / 速度感 / 快切 / 构图 / 光影 配方表，防崩万能公式（人物 / 场景 / 动漫二次元固定结构），以及短剧实战 8 大痛点避坑（音画同步、三层提示词结构、情绪递进、空间一致、多人分层、一素材一职责、爽点三段、动作戏省略暴力）。
- **AI 人物真实感关键词库**（references/portrait-realism-details.md，由抖音「AI视觉真实感系列」等创作者蒸馏）：面部局部特写（眼睛 / 嘴唇 / 鼻颊 / 发丝）照抄词、皮肤去「塑料感」清单、微表情「写情绪变化过程」8 步框架，以及「别堆词→先搭结构 + 打光 + 多角度」让人物有活人感的工作流。
- **短剧剧本创作模块（上游）**（references/short-drama-screenwriting.md + references/short-drama/，改编自 MIT 开源 [0xsline/short-drama](https://github.com/0xsline/short-drama)）：13 种题材 + 出海文化映射、开篇黄金法则、付费卡点 5 套路、节奏四阶段波形、5 大爽点矩阵、四层反派体系、5 种钩子、合规红线清单——把一句创意写成 50-100 集完整剧本，再无缝接入下游视频化（同用 △ + 景别格式）。
- **官方指南同步**（2026.05.15 更新）：三类任务基础公式、进阶公式、主体定义（多主体/多素材）、分镜时序、动作描述、特殊字符规范、素材配置，以及 **10+ 条常见问题避坑**（ID 漂移 / 双胞胎 / 字幕 / 风格漂移 / 延长跳变 / 画质劣化 / 发音 / 音色等）。
- **镜头语言、氛围关键词、多模态引用语法（@图片/@视频/@音频）速查表**。

## 目录结构

本仓库同时是一个 **Claude Code 插件**，并自带 marketplace 清单，可一键安装。

```
seedance-prompts-skill/
├── seedance-prompts-skill.zip            # 打包好的技能（用于上传到 Claude；由 CI 自动同步）
├── .claude-plugin/
│   ├── plugin.json                       # 插件清单
│   └── marketplace.json                  # marketplace 清单（自带市场，支持 /plugin 安装）
├── scripts/build-zip.sh                  # 可复现地重建 zip
├── .github/workflows/build-skill-zip.yml # skill 变更时自动重建并提交 zip
└── skills/
    └── seedance-prompts-skill/
        ├── SKILL.md                      # 技能主文件（工作流 + 12 条生产铁律 + 输出格式）
        └── references/
            ├── seedance-prompt-guide.md     # 完整模板库与提示词手册（17 个模板 + 速查表 + 示例 + 官方指南同步）
            ├── cinematic-techniques.md      # 视听语言实战技巧库（运镜/光影/构图/节奏/蒙太奇/一致性/导演思维，创作者实操蒸馏）
            ├── prompt-craft-and-realism.md  # 提示词工程底层机制与去 AI 感技巧库（邪修篇：机制控制/真实感/调色/一致性/导演思维）
            ├── seedance2-prompt-cookbook.md # Seedance 2.0 提示词配方手册（运镜/光影/万能公式 + 短剧 8 大痛点避坑）
            ├── portrait-realism-details.md  # AI 人物真实感关键词库（眼/唇/鼻颊/发丝/皮肤/微表情 + 结构+打光+多角度工作流）
            ├── short-drama-screenwriting.md # 短剧剧本创作（上游）：命令流 + 八大方法论 + → 视频化交接
            └── short-drama/                 # 短剧编剧方法论库（改编自 0xsline/short-drama, MIT）
                ├── genre-guide.md           #   13 题材 + 出海映射
                ├── opening-rules.md         #   开篇黄金法则 + 6 开场模板
                ├── paywall-design.md        #   付费卡点 5 套路
                ├── rhythm-curve.md          #   节奏曲线（单集微结构 + 全剧四阶段波形）
                ├── satisfaction-matrix.md   #   5 大爽点矩阵
                ├── villain-design.md        #   四层反派体系
                ├── hook-design.md           #   5 种钩子类型
                ├── compliance-checklist.md  #   合规红线/灰区清单
                └── LICENSE                  #   上游 MIT 版权声明（© 2025 0xsline）
```

## 安装

### 方式一：Claude Code · `/plugin` 一键安装（推荐）

在 Claude Code 中执行：

```text
/plugin marketplace add mantoufan/seedance-prompts-skill
/plugin install seedance-prompts-skill@seedance-prompts
```

第一行把本仓库作为 marketplace（名为 `seedance-prompts`）添加进来；第二行从该市场安装 `seedance-prompts-skill` 插件。安装后技能即自动生效，无需手动重启。

### 方式二：Claude Code · 直接对话安装

也可以直接告诉 Claude Code：

> 把 https://github.com/mantoufan/seedance-prompts-skill 安装为我的 skill

Claude Code 会把仓库里的 `skills/seedance-prompts-skill/` 子目录克隆到 `~/.claude/skills/`（全局）或当前项目的 `.claude/skills/`。完成后即可使用。

### 方式三：上传 zip 到 Claude（claude.ai / 桌面端）

从 **[Releases](https://github.com/mantoufan/seedance-prompts-skill/releases/latest)** 或仓库根目录下载 **[`seedance-prompts-skill.zip`](seedance-prompts-skill.zip)**，在 Claude 的「设置 → Capabilities / Skills」处上传该 zip 即可安装。该 zip 顶层是单个 `seedance-prompts-skill/` 文件夹（内含 `SKILL.md` 与 `references/`），符合 Claude 技能上传规范，并由 CI 在 skill 变更时自动保持最新。

### 方式四：手动克隆为本地 Skill

```bash
# 全局安装（对所有项目可用）
git clone https://github.com/mantoufan/seedance-prompts-skill.git /tmp/seedance \
  && cp -r /tmp/seedance/skills/seedance-prompts-skill ~/.claude/skills/

# 或项目级安装
cp -r /tmp/seedance/skills/seedance-prompts-skill .claude/skills/
```

> 说明：Claude 通过 SKILL.md 的 frontmatter `name: seedance-prompts-skill` 识别技能。手动安装复制的是 `skills/seedance-prompts-skill/` 子目录（而非整个仓库），安装后重启 Claude Code 即可加载。

### 方式五：在 ChatGPT / 其他 LLM 上使用（OpenAI 等）

本技能的正文（[SKILL.md](skills/seedance-prompts-skill/SKILL.md) + [seedance-prompt-guide.md](skills/seedance-prompts-skill/references/seedance-prompt-guide.md)）是**与模型无关的纯 Markdown 提示词工程内容**，可在任意大模型上复用：

- **ChatGPT Custom GPT（推荐）**：新建一个 GPT，把 `SKILL.md` 全文粘进 **Instructions**，把 `seedance-prompt-guide.md` 作为 **Knowledge** 文件上传，即可获得与本技能一致的剧本 / 分镜生成能力。
- **ChatGPT Project / 普通对话**：把 `SKILL.md` 作为系统提示或首条消息粘入，再贴上你的小说 / 文章 / 大纲。
- **其它 LLM**（Gemini、DeepSeek 等）同理：将上述内容作为系统提示注入即可。

> 注意：`/plugin` 一键安装、自动触发是 **Claude 专有能力**，ChatGPT 等平台需手动粘贴或自建 Custom GPT。生成结果的 **Seedance 2.0 提示词语法不变**（仍投喂即梦 / 小云雀 / LibTV 等平台）。

## 维护：zip 自动同步

`seedance-prompts-skill.zip` 由源文件打包而成，无需手动维护：

- **CI 自动重建**：GitHub Action [`build-skill-zip.yml`](.github/workflows/build-skill-zip.yml) 监听 `skills/**` 变更，自动重新打包并把刷新后的 zip 提交回 `main`（构建可复现——固定时间戳 + 排序，仅内容变化时才产生差异，不会触发循环）。
- **本地手动重建**：`bash scripts/build-zip.sh`。
- **本地提交时自动重建**（可选）：启用一次 `git config core.hooksPath .githooks`，之后凡提交涉及 `skills/` 的改动，[`.githooks/pre-commit`](.githooks/pre-commit) 会自动重打包并 `git add` 该 zip。

## 使用说明 + 示例

安装后（见上文）直接用自然语言向 Claude 描述需求即可自动调用本技能。两个入口：

- **从零写短剧（上游）**：说「帮我写一部 XX 题材的短剧 / 从选题开始」→ 进入渐进式命令流。也可显式用斜杠命令：`/start` 选题 → `/plan` 故事骨架 → `/characters` 角色 → `/outline` 分集目录 → `/episode N` 单集剧本 → `/review N` 自检 → `/compliance` 合规 → `/export` 导出；`/overseas` 任意阶段切出海。
- **已有素材做视频（下游）**：贴上小说 / 文章 / 大纲，说「把这个改成 Seedance 视频脚本 / 生成分镜提示词」→ 直接产出标准剧本 + C/S/P 资产提示词 + 时间轴分镜。

### 示例

下面四个示例串成一条完整流水线：从一句话立项「战神归来 + 萌宝」短剧，到写出单集剧本，再抽资产、转 Seedance 分镜。点击展开查看真实输出。

<details>
<summary><b>① 上游 · 选题 + 故事骨架</b>（<code>/start</code> → <code>/plan</code>）</summary>

**输入：**

> 帮我写一部「战神归来 + 萌宝」的短剧，女频，60 集，从选题开始。

**输出（节选）：**

```markdown
# 🎬 创作方向确认
- 题材组合：战神归来 + 萌宝（赘婿逆袭向）
- 目标受众：女频   ·   故事基调：爽燃 + 温情
- 结局类型：大团圆   ·   集数规模：60 集（标准）

# 📋 创作方案（/plan 节选）
剧名备选：①《战神归来宠妻日常》②《五年之约》③《爹地，妈咪又被欺负了》
一句话故事线：戍边五年的战神秦烈归来，发现妻子苏晚为他生下女儿念念，
              却在豪门苏家受尽羞辱——他要带妻女，把欠她们的全讨回来。
核心冲突：隐藏身份的"赘婿" vs. 苏家与背后军火集团

三幕结构（60 集）：
  第一幕（1-15 集·建置）：归家受辱 → 念念护父 → 身份初露端倪
  第二幕（16-45 集·对抗）：商战打脸 → 仇家浮现 → 念念身世悬念升级
  第三幕（46-60 集·高潮）：军部身份揭晓 → 终极对决 → 一家三口团圆

付费卡点（💰）：第 3 集（身份即将揭露）、第 8 集（念念被掳生死一线）…
爽点矩阵：身份碾压(全剧脊柱) + 打脸复仇(1-2 集一次) + 情感爆发(感情线节点)
```

</details>

<details>
<summary><b>② 上游 · 单集剧本</b>（<code>/episode 1</code>，国内 △ 格式）</summary>

**输入：** `/episode 1`

**输出（节选）：**

```markdown
# 第1集：归家即羞辱

> 本集关键词：归来 / 打脸 / 护父   ｜   本集爽点：身份碾压（铺垫）
> 前情提要：戍边五年杳无音讯的秦烈，今夜回到了苏家。

## 场次一
**场景：** 内景 · 苏家别墅·宴会厅 · 夜
**出场人物：** 秦烈、苏晚、念念、苏母、表姐夫

△ （全景）水晶灯下宾客云集，秦烈一身洗得发白的旧军装站在门口，格格不入。
△ （中景）苏母皱眉上下打量，嫌恶地别过脸。

**苏母**（冷笑）："五年不回，还以为死在外头了。也好意思回来吃白食？"

△ （特写）四岁的念念攥紧小拳头，挡在秦烈身前。

**念念**（奶声奶气，却很倔）："不许凶我爸爸！我爸爸是大英雄！"

△ （近景）秦烈蹲下身，揉了揉女儿的头，眼神却冷冷扫过全场。

♪ 音乐提示：低沉弦乐渐起，暗藏压迫感

---

> 🎣 本集钩子：秦烈的旧手机突然震动，屏幕显示"军部·特急"。
> 📺 下集预告：一通电话，让满堂嘲笑戛然而止。
```

</details>

<details>
<summary><b>③ 下游 · 资产生成提示词</b>（C/S/P，喂给 Nano Banana Pro / GPT-image）</summary>

**输入：**

> 把第 1 集转成视频，先出角色和场景的生成提示词。

**输出（节选）：**

```markdown
### C01 — 秦烈·正面全身（角色一致性参考）
Cinematic photorealistic style with dramatic lighting，
32 岁亚洲男性，短寸黑发，剑眉星目，下颌线利落，眉骨有一道浅疤；
洗得发白的旧式军绿夹克、挺拔军姿、眼神沉静克制；
**真实感**：可见毛孔、皮肤纹理自然、轻微胡茬、自然油光，非塑料感；
9:16 竖屏，影棚柔光，高清细节，电影质感。

### S01 — 苏家别墅·宴会厅·夜（场景参考）
Cinematic photorealistic style，欧式豪华宴会厅，巨型水晶吊灯，
大理石地面反光，香槟塔与宾客虚化于背景，冷暖对比光，景深通透；
9:16 竖屏，电影级布光，高清。

### P01 — 旧军用手机（道具）
写实风格，一部老旧三防军用手机，金属边框磨损，
屏幕亮起"军部·特急"红色来电界面，微距特写，质感真实。
```

</details>

<details>
<summary><b>④ 下游 · Seedance 2.0 时间轴分镜</b>（音画一体，直接投喂小云雀 / 即梦）</summary>

**输入：**

> 把第 1 集场次一生成 Seedance 2.0 分镜提示词。

**输出：**

```text
画面无任何字幕。

电影写实风格，15秒，9:16竖屏，豪门宴会厅冷暖对比、暗藏压迫的氛围

0-3秒：场景建立 - 缓慢推镜头，水晶灯下宾客云集，秦烈一身旧军装立于门口格格不入，环境人声嘈杂渐弱

3-6秒：冲突引入 - 中景切近景，苏母嫌恶别过脸，苏母（冷笑）："五年不回，还以为死在外头了。"

6-9秒：情绪反击 - 低角度特写，四岁念念攥拳挡在父亲身前，念念（倔强奶音）："不许凶我爸爸！我爸爸是大英雄！"

9-12秒：人物定调 - 跟镜头下蹲，秦烈揉女儿的头，眼神冷冷扫过全场，全场安静

12-15秒：钩子落版 - 特写，秦烈口袋里旧手机骤然亮起"军部·特急"，红光映在他眼底

【声音】低沉弦乐渐起暗藏压迫 + 宴会厅环境人声/高跟鞋声/手机震动音效 + 男声沉稳克制、童声清亮倔强、妇人声尖刻

【参考】@图片1 秦烈面部与军装一致性，@图片2 宴会厅空间布局，@图片3 手机来电特写
```

> 第 2+ 集用 `将@视频1延长15s` 上传上一集做视频参考，保证人物 / 场景连续性。

</details>

> 已有现成小说 / 文章 / 大纲的用户可**跳过上游**，直接贴正文说「改成 Seedance 分镜」，从示例 ③④ 的下游流程开始。

## 工作流概览

1. **分析输入** → 判断是完整文本还是大纲，提取主角、冲突、叙事弧、核心梗。
2. **确认制作参数** → 视觉风格、时长、画幅、基调、核心卖点。
3. **生成完整剧本** → 核心梗 / 故事梗概 / 一句话卖点 / 人物小传 / 起承转合 / △格式正文。
4. **创建资产生成计划** → C/S/P 编号 + 图像模型提示词。
5. **生成 Seedance 2.0 分镜脚本** → 时间轴格式 + 素材上传清单 + 结尾帧描述（保证连续性）。

详见 [SKILL.md](skills/seedance-prompts-skill/SKILL.md) 与 [references/seedance-prompt-guide.md](skills/seedance-prompts-skill/references/seedance-prompt-guide.md)。

## 参考

- 火山引擎官方提示词指南：https://www.volcengine.com/docs/82379/2222480?lang=zh
- 视听语言实战技巧库蒸馏自抖音合集「AI 视频教程」（作者：李一帆 /「AI 界人民教师一帆」，17 集），见 [references/cinematic-techniques.md](skills/seedance-prompts-skill/references/cinematic-techniques.md)。
- 提示词工程去 AI 感技巧库蒸馏自抖音合集「刺猬星球superi · ai创作者的乌托邦」（37 集），见 [references/prompt-craft-and-realism.md](skills/seedance-prompts-skill/references/prompt-craft-and-realism.md)。
- Seedance 2.0 提示词配方手册蒸馏自抖音合集「Seedance2 教学计划」（作者：张百川AI，14 集），见 [references/seedance2-prompt-cookbook.md](skills/seedance-prompts-skill/references/seedance2-prompt-cookbook.md)。
- AI 人物真实感关键词库蒸馏自抖音合集「AI视觉真实感系列」（作者：啊布 / AI短剧实战派）及 Jac.key 等创作者，见 [references/portrait-realism-details.md](skills/seedance-prompts-skill/references/portrait-realism-details.md)。
- 短剧剧本创作模块改编自开源 Claude Skill [0xsline/short-drama](https://github.com/0xsline/short-drama)（微短剧剧本创作技能包，MIT License，© 2025 0xsline），见 [references/short-drama-screenwriting.md](skills/seedance-prompts-skill/references/short-drama-screenwriting.md) 与 [references/short-drama/](skills/seedance-prompts-skill/references/short-drama/)（保留上游 LICENSE）。

> 以上技巧库均由创作者公开视频/合集的文案、画面与图片信息蒸馏整理；短剧剧本创作模块改编自 0xsline/short-drama（MIT）。内容版权归各原作者所有，仅供学习研究。

## License

MIT
