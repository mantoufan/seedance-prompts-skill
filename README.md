# Seedance 分镜生成器 · Claude Skill

专业的 **Seedance 2.0** AI 视频脚本与分镜提示词生成 Skill。把一篇小说、文章或一句故事大纲，转换成可直接投喂给字节「小云雀」/ 即梦平台的标准剧本、资产生成提示词和时间轴分镜脚本。

> Seedance 2.0 入口：小云雀 App / 网页版 → 创作 → 模式 → **沉浸式短片（Seedance 2.0）**。即梦平台同样可用。

## 能做什么

- **文章/故事 → 视频脚本**：将完整文本或简短大纲改编为标准脚本格式（△镜头描述 + 对白 + OS/VO + 闪回 + 字幕）。
- **生成 Seedance 2.0 分镜提示词**：时间轴格式、音画一体、可直接复制使用。
- **多集系列规划**：短剧 5 集 ×15s、长剧 20 集 ×15s 的剧集分解与连续性管理。
- **资产生成提示词**：为 Nana Banana Pro / GPT-image 等图像模型批量生成角色（C01–C99）、场景（S01–S99）、道具（P01–P99）提示词。

## 核心特性

- **10 条生产铁律**（SKILL.md 顶部，最高优先级）：时长分段计算、续接残影加固、无字幕规则、对白时间轴对齐、审核规避、TTS 配音避坑、动作可分性、双人手部锁定、输出排版、声线锁定。
- **17 个提示词模板**（references/seedance-manual.md）：叙事 / 产品 / 角色 / 风景 / 战争 / 长镜头 / 伪纪录片 / **沉浸式短片（视听一体·八维黄金公式）** 等。
- **镜头语言、氛围关键词、多模态引用语法（@图片/@视频/@音频）速查表**。

## 目录结构

```
seedance-prompts-skill/
├── SKILL.md                      # 技能主文件（工作流 + 生产铁律 + 输出格式）
└── references/
    └── seedance-manual.md        # 完整模板库与提示词手册（17 个模板 + 速查表 + 示例）
```

## 安装

将整个目录复制到 Claude 的 skills 目录，目录名需与 SKILL.md 中 `name` 字段一致：

```bash
# 全局安装（对所有项目可用）
git clone git@github.com:mantoufan/seedance-prompts-skill.git \
  ~/.claude/skills/seedance-storyboard-generator

# 或项目级安装
git clone git@github.com:mantoufan/seedance-prompts-skill.git \
  .claude/skills/seedance-storyboard-generator
```

> 说明：Claude 通过 SKILL.md 的 frontmatter `name: seedance-storyboard-generator` 识别技能；建议把目录命名为同名以保持一致。安装后重启 Claude Code 即可自动加载。

## 触发场景

向 Claude 提出以下任意需求时会自动调用本技能：

1. 把文章 / 故事转换为视频脚本；
2. 生成 Seedance 2.0 分镜提示词；
3. 规划多集 AI 视频系列；
4. 为图像模型创建角色 / 场景 / 道具生成提示词。

## 工作流概览

1. **分析输入** → 判断是完整文本还是大纲，提取主角、冲突、叙事弧、核心梗。
2. **确认制作参数** → 视觉风格、时长、画幅、基调、核心卖点。
3. **生成完整剧本** → 核心梗 / 故事梗概 / 一句话卖点 / 人物小传 / 起承转合 / △格式正文。
4. **创建资产生成计划** → C/S/P 编号 + 图像模型提示词。
5. **生成 Seedance 2.0 分镜脚本** → 时间轴格式 + 素材上传清单 + 结尾帧描述（保证连续性）。

详见 [SKILL.md](SKILL.md) 与 [references/seedance-manual.md](references/seedance-manual.md)。

## 参考

- 火山引擎官方提示词指南：https://www.volcengine.com/docs/82379/2222480?lang=zh

## License

MIT
