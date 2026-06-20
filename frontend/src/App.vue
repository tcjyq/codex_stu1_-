<template>
  <div class="page-shell">
    <div class="opening-curtain" aria-hidden="true"><span class="panel-left"></span><span class="panel-right"></span><i class="curtain-letter"><b class="letter-left">M</b><b class="letter-right">M</b></i></div>
    <canvas ref="sky" class="gravity-sky" aria-hidden="true"></canvas>
    <div ref="liquidField" class="liquid-field" aria-hidden="true"><span></span><span></span><span></span><span></span></div>
    <div ref="orbitalField" class="orbital-field" aria-hidden="true"><span class="orbit orbit-a"></span><span class="orbit orbit-b"></span><span class="orbit orbit-c"></span></div>
    <div ref="sessionStage" class="session-stage" aria-hidden="true"><span class="beam beam-a"></span><span class="beam beam-b"></span><span class="ribbon ribbon-a"></span><span class="ribbon ribbon-b"></span><span class="grid"></span><span class="spotlight"></span></div>
    <div ref="cursorHalo" class="cursor-halo" aria-hidden="true"></div>

    <header class="topbar">
      <a href="#top" class="brand" aria-label="马弘佳个人主页">
        <span class="logo-mark" aria-hidden="true">
          <svg viewBox="0 0 64 64" role="img">
            <defs><linearGradient id="logo-metal" x1="12" y1="6" x2="52" y2="58"><stop offset="0" stop-color="#e0f2fe"/><stop offset="0.34" stop-color="#7dd3fc"/><stop offset="0.72" stop-color="#8b5cf6"/><stop offset="1" stop-color="#111827"/></linearGradient></defs>
            <rect x="5" y="5" width="54" height="54" rx="18" fill="#07111f" stroke="rgba(226,242,255,.28)"/>
            <path d="M18 45V19h6.8l7.2 14.6L39.2 19H46v26h-6.3V30.6l-5.3 10.5h-4.8l-5.3-10.5V45H18Z" fill="url(#logo-metal)"/>
            <path d="M17 48h30" stroke="#7dd3fc" stroke-width="2" stroke-linecap="round" opacity=".55"/>
          </svg>
        </span>
        <span class="brand-text">马弘佳</span>
      </a>
      <nav class="desktop-nav" aria-label="主导航"><a href="#about">关于</a><a href="#skills">能力</a><a href="#projects">项目</a><a href="#contact">联系</a></nav>
      <button class="mail" type="button" @click="copyWechat">复制微信</button>
      <button class="menu-toggle" type="button" :class="{ 'is-open': menuOpen }" :aria-expanded="menuOpen" aria-controls="mobile-menu" aria-label="打开移动端导航" @click="toggleMenu">
        <span></span><span></span><span></span>
      </button>
    </header>

    <div id="mobile-menu" class="mobile-menu" :class="{ 'is-open': menuOpen }" :aria-hidden="!menuOpen">
      <a href="#about" @click="closeMenu">关于</a>
      <a href="#skills" @click="closeMenu">能力</a>
      <a href="#projects" @click="closeMenu">项目</a>
      <a href="#contact" @click="closeMenu">联系</a>
      <a href="mailto:2496978741@qq.com" @click="closeMenu">邮箱 2496978741@qq.com</a>
    </div>

    <main>
      <section id="top" class="hero section page-section">
        <div class="hero-copy reveal-block">
          <p class="pill opening-item">AI 大模型应用与数据分析</p>
          <h1 class="hero-title section-heading"><span>把数据整理清楚，</span><span>把 AI 用到实处。</span></h1>
          <p class="lead opening-item">信息管理与信息系统学生，关注数据处理、业务分析、VibeCoding 和 AI 工具落地。</p>
          <div class="actions opening-item"><a href="#projects" class="primary">查看项目</a><a href="#contact" class="secondary">联系我</a></div>
          <div class="stats card-group">
            <article class="glass card"><strong>2027</strong><span>本科预计毕业</span></article>
            <article class="glass card"><strong>GPA 3.12</strong><span>连续 2 学年获校级三等奖学金</span></article>
            <article class="glass card"><strong>CET-4</strong><span>英语基础能力</span></article>
          </div>
        </div>
        <aside class="portrait glass reveal-block card-group">
          <figure class="avatar-frame">
            <img :src="avatar" alt="马弘佳的个人头像" />
          </figure>
          <div class="mini-grid"><div><small>当前方向</small><b>数据分析 / AI 应用</b></div><div><small>表达方式</small><b>代码、页面与报告</b></div></div>
        </aside>
      </section>

      <section id="about" class="section page-section about-section reveal-block">
        <div class="section-head"><h2 class="section-title section-heading">从信息系统出发，做能被看懂的 AI 作品。</h2><p>我更喜欢把混乱的信息拆成结构，再用代码和设计把结果讲清楚。页面、报告、后台和数据表都应该服务于真实问题。</p></div>
        <div class="about-layout card-group">
          <article class="glass statement-panel"><h3>我的学习路径</h3><p>江苏科技大学苏州理工学院，信息管理与信息系统专业。课程训练覆盖数据库、管理信息系统、数据分析、业务流程和文档表达。</p><div class="statement-row"><span>2023.09 - 2027.06</span><span>本科在读</span></div></article>
          <div class="about-grid">
            <article class="glass panel feature-panel"><h3>VibeCoding 工作流</h3><p>熟悉使用 Codex、Claude Code 等工具，把需求拆解成任务，快速完成页面、脚本、文档和调试闭环。</p></article>
            <article class="glass panel feature-panel"><h3>数据到表达</h3><p>能用 Excel/WPS、Python 和可视化思路处理数据，重视字段核对、报表规范和分析结论的可解释性。</p></article>
            <article class="glass panel feature-panel"><h3>协作习惯</h3><p>喜欢先确认目标、输出可验证版本，再根据反馈微调细节，保证每一步都能落到具体文件和效果。</p></article>
          </div>
        </div>
      </section>

      <section id="skills" class="section page-section reveal-block">
        <div class="section-head narrow"><h2 class="section-title section-heading">把工具组合成稳定的交付能力。</h2></div>
        <div class="skill-grid card-group"><article v-for="item in skills" :key="item.title" class="glass panel"><h3>{{ item.title }}</h3><p>{{ item.text }}</p></article></div>
      </section>

      <section id="projects" class="section page-section reveal-block">
        <div class="section-head"><h2 class="section-title section-heading">项目与练习</h2><p>项目不追求堆满概念，而是把问题、过程和结果讲清楚。</p></div>
        <div class="project-grid card-group"><article v-for="project in projects" :key="project.title" class="glass project-card"><img :src="project.image" :alt="project.alt" loading="lazy" decoding="async" /><div><small>{{ project.time }}</small><h3>{{ project.title }}</h3><p>{{ project.text }}</p></div></article></div>
      </section>

      <section id="contact" class="section page-section contact reveal-block">
        <div class="contact-layout card-group">
          <article class="glass contact-main"><h2 class="section-heading">如果您认为我可以胜任贵公司的某个岗位，请联系我。</h2><p>我正在为大学毕业后的求职做准备，期待在 AI 应用、数据整理、前端页面、Django 后台、业务资料整理等方向获得实习或正式岗位机会。</p><div class="actions contact-links"><a class="secondary" href="mailto:2496978741@qq.com">邮箱 2496978741@qq.com</a><span class="secondary contact-chip">微信 wx2496978741</span></div></article>
          <aside class="contact-stack"><div class="glass mini-panel"><small>可以协助</small><b>网页作品 / 数据清洗 / 汇报材料</b></div><div class="glass mini-panel"><small>AI 工具</small><b>Codex / Claude Code / ChatGPT / DeepSeek</b></div><div class="glass mini-panel"><small>响应方式</small><b>先确认目标，再给出可验证版本</b></div></aside>
        </div>
      </section>
    </main>
  </div>
</template>

<script setup>
import { onBeforeUnmount, onMounted, ref } from 'vue'
import gsap from 'gsap'
import { ScrollToPlugin } from 'gsap/ScrollToPlugin'
import { ScrollTrigger } from 'gsap/ScrollTrigger'
import avatarPhoto from './assets/avatar-id-photo.jpg'

gsap.registerPlugin(ScrollToPlugin, ScrollTrigger)
document.documentElement.style.setProperty('--copy-hint', '"\u590d\u5236\u5fae\u4fe1"')

const avatar = ref(avatarPhoto)
const menuOpen = ref(false)
const closeMenu = () => { menuOpen.value = false }
const toggleMenu = () => { menuOpen.value = !menuOpen.value }
const sky = ref(null)
const liquidField = ref(null)
const orbitalField = ref(null)
const sessionStage = ref(null)
const cursorHalo = ref(null)
let cleanupSky = () => {}
let cleanupMotion = () => {}
let cleanupPager = () => {}
let cleanupPress = () => {}

const skills = [
  { title: '数据整理', text: '使用 Excel、WPS、Python 完成清洗、核对、分类、基础分析与图表输出。' },
  { title: '数据库查询', text: '理解 MySQL 基础语法、表结构和常见查询，能配合业务问题整理字段。' },
  { title: 'AI 提效', text: '把大模型用于资料梳理、代码辅助、文档润色和方案拆解。' },
  { title: 'VibeCoding', text: '熟悉 Codex、Claude Code 的使用，能通过迭代提示词和本地验证快速落地功能。' },
  { title: '前端表达', text: '能用 Vue、Vite、GSAP 做个人主页、作品展示和动效原型。' },
  { title: '工具箱', text: 'Python、MySQL、Excel/WPS、UML、Enterprise Architect、ChatGPT、DeepSeek、Gemini 持续补充中。' },
]
document.documentElement.style.setProperty('--copy-hint', '"联系"')

const projects = [
  { time: '2026.03 - 2026.04', title: '苹果质量数据 K-means 聚类分析', image: 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&w=1200&q=82', alt: '数据分析工作台', text: '主导完成数据清洗、分析方案、聚类建模和结果评估，借助 AI 生成基础代码框架后再人工复核。' },
  { time: '2026.03 - 2026.05', title: '高校图书馆管理 UML 建模', image: 'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?auto=format&fit=crop&w=1200&q=82', alt: '高校图书馆系统设计和流程建模', text: '以高校图书管理系统为对象，使用 UML 和 Enterprise Architect 绘制用例图、类图、序列图、活动图。' },
]

async function copyWechat() {
  try {
    await navigator.clipboard.writeText('wx2496978741')
    document.documentElement.style.setProperty('--copy-hint', '"已复制微信"')
    setTimeout(() => document.documentElement.style.setProperty('--copy-hint', '"联系"'), 1200)
  } catch {
    alert('联系wx2496978741')
  }
}

function setupGsapMotion() {
  const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches
  const ctx = gsap.context(() => {
    gsap.set('.reveal-block,.section-heading,.card-group > *', { opacity: 1 })
    if (!reduceMotion) {
      const opening = gsap.timeline({ defaults: { ease: 'expo.out' } })
      opening.set('.hero-title span', { display: 'block', clipPath: 'inset(0 0 100% 0)', y: window.innerWidth < 768 ? 42 : 86, scaleY: 0.72, transformOrigin: '50% 100%' })
        .from('.curtain-letter b', { opacity: 0, duration: 0.62, ease: 'expo.out' })
        .to('.panel-left', { xPercent: -100, duration: 1.18, ease: 'expo.inOut' }, 0.28)
        .to('.panel-right', { xPercent: 100, duration: 1.18, ease: 'expo.inOut' }, 0.28)
        .to('.letter-left', { x: -48, opacity: 0, duration: 0.68, ease: 'expo.inOut' }, 0.42)
        .to('.letter-right', { x: 48, opacity: 0, duration: 0.68, ease: 'expo.inOut' }, 0.42)
        .to('.opening-curtain', { autoAlpha: 0, duration: 0.01 })
        .from('.topbar', { y: -34, opacity: 0, duration: 1.0 }, 0.72)
        .to('.hero-title span', { clipPath: 'inset(0 0 0% 0)', y: 0, scaleY: 1, duration: 1.28, stagger: 0.13 }, 0.86)
        .from('.opening-item', { y: 36, opacity: 0, filter: 'blur(10px)', duration: 1.05, stagger: 0.12 }, 1.05)
        .from('.portrait', { y: 56, rotateX: -9, opacity: 0, filter: 'blur(14px)', duration: 1.28 }, 1.16)
        .from('.stats .card', { y: 42, opacity: 0, duration: 0.95, stagger: 0.08 }, 1.35)

      gsap.to('.liquid-field span', { x: 'random(-42, 42)', y: 'random(-28, 28)', rotation: 'random(-10, 10)', scale: 'random(0.96, 1.06)', duration: 'random(12, 18)', repeat: -1, yoyo: true, ease: 'sine.inOut', stagger: 0.7 })
      gsap.to('.beam', { x: 'random(-48, 56)', y: 'random(-22, 24)', rotation: '+=5', duration: 15, repeat: -1, yoyo: true, ease: 'sine.inOut', stagger: 1.6 })
      gsap.to('.ribbon', { x: 'random(-36, 40)', y: 'random(-14, 16)', skewX: 'random(-4, 4)', duration: 13, repeat: -1, yoyo: true, ease: 'sine.inOut', stagger: 1.1 })
      gsap.to('.orbit', { rotation: 360, duration: 34, repeat: -1, ease: 'none', stagger: 6 })

      if (window.innerWidth >= 768) document.querySelectorAll('.page-section:not(#top)').forEach((section) => {
        const tl = gsap.timeline({ scrollTrigger: { trigger: section, start: 'top 58%', once: false, toggleActions: 'play none none reverse' } })
        const isMobile = window.innerWidth < 768;
        tl.from(section.querySelectorAll('.section-heading'), { y: window.innerWidth < 768 ? 28 : 82, scaleY: 0.82, opacity: 0, filter: 'blur(10px)', transformOrigin: '50% 100%', duration: 1.0, ease: 'expo.out', clearProps: isMobile ? 'all' : 'filter' })
          .from(section.querySelectorAll('.section-head p,.contact-main p'), { y: window.innerWidth < 768 ? 12 : 26, opacity: 0, filter: 'blur(8px)', duration: 0.82, ease: 'expo.out' }, '-=0.58')
          .from(section.querySelectorAll('.card-group > *,.contact-links > *'), { y: window.innerWidth < 768 ? 20 : 46, opacity: 0, filter: 'blur(10px)', duration: 0.95, stagger: 0.09, ease: 'expo.out' }, '-=0.42')
      })
    }
  })
  const quickX = gsap.quickTo(cursorHalo.value, 'x', { duration: 0.55, ease: 'expo.out' })
  const quickY = gsap.quickTo(cursorHalo.value, 'y', { duration: 0.55, ease: 'expo.out' })
  const stageX = gsap.quickTo(sessionStage.value, 'x', { duration: 0.85, ease: 'expo.out' })
  const stageY = gsap.quickTo(sessionStage.value, 'y', { duration: 0.85, ease: 'expo.out' })
  const liquidX = gsap.quickTo(liquidField.value, 'x', { duration: 1.1, ease: 'expo.out' })
  const liquidY = gsap.quickTo(liquidField.value, 'y', { duration: 1.1, ease: 'expo.out' })
  const orbitX = gsap.quickTo(orbitalField.value, 'x', { duration: 1.25, ease: 'expo.out' })
  const orbitY = gsap.quickTo(orbitalField.value, 'y', { duration: 1.25, ease: 'expo.out' })
  const spotlight = sessionStage.value?.querySelector('.spotlight')
  const spotlightX = gsap.quickTo(spotlight, 'x', { duration: 0.5, ease: 'expo.out' })
  const spotlightY = gsap.quickTo(spotlight, 'y', { duration: 0.5, ease: 'expo.out' })
  let pointerFrame = 0
  let latestPointer = null
  const applyPointer = () => {
    pointerFrame = 0
    if (!latestPointer) return
    const { clientX, clientY } = latestPointer
    const px = clientX / window.innerWidth - 0.5
    const py = clientY / window.innerHeight - 0.5
    document.documentElement.style.setProperty('--mouse-x', `${clientX}px`)
    document.documentElement.style.setProperty('--mouse-y', `${clientY}px`)
    quickX(clientX); quickY(clientY); stageX(px * -34); stageY(py * -24); liquidX(px * 22); liquidY(py * 16); orbitX(px * -18); orbitY(py * -12); spotlightX(clientX); spotlightY(clientY)
  }
  const onMove = (event) => {
    latestPointer = event
    if (!pointerFrame) pointerFrame = requestAnimationFrame(applyPointer)
  }
  window.addEventListener('pointermove', onMove, { passive: true })
  cleanupMotion = () => { window.removeEventListener('pointermove', onMove); cancelAnimationFrame(pointerFrame); ctx.revert(); ScrollTrigger.getAll().forEach((trigger) => trigger.kill()) }
}

function setupPageSnap() {
  const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches
  const pages = gsap.utils.toArray('.page-section')
  const navLinks = gsap.utils.toArray('.topbar a[href^="#"]')
  const shouldSnap = !reduceMotion && window.matchMedia('(min-width: 851px)').matches && window.matchMedia('(pointer: fine)').matches
  let current = Math.max(0, pages.findIndex((page) => page.id === location.hash.slice(1)))
  let locked = false
  let lastWheelAt = 0
  const markActive = (id) => navLinks.forEach((link) => link.classList.toggle('is-active', link.getAttribute('href') === `#${id}`))
  markActive(pages[current]?.id || 'top')
  if (!shouldSnap) { cleanupPager = () => {}; return }
  const goToPage = (index, pushHash = true) => {
    const next = Math.max(0, Math.min(pages.length - 1, index))
    const target = pages[next]
    if (!target || locked || (next === current && Math.abs(window.scrollY - target.offsetTop) < 2)) return
    locked = true; current = next; markActive(target.id)
    if (pushHash) history.replaceState(null, '', `#${target.id}`)
    gsap.to(window, { scrollTo: { y: target, autoKill: false }, duration: reduceMotion ? 0.01 : 0.68, ease: 'power3.out', overwrite: 'auto', onComplete: () => setTimeout(() => { locked = false }, 40) })
  }
  const onWheel = (event) => {
    if (Math.abs(event.deltaY) < 18) return
    event.preventDefault()
    const now = performance.now()
    if (locked || now - lastWheelAt < 680) return
    lastWheelAt = now
    goToPage(current + (event.deltaY > 0 ? 1 : -1))
  }
  const onClick = (event) => {
    const link = event.target.closest?.('a[href^="#"]')
    if (!link) return
    const id = link.getAttribute('href').slice(1)
    const index = pages.findIndex((page) => page.id === id)
    if (index === -1) return
    event.preventDefault(); closeMenu(); goToPage(index)
  }
  const onKey = (event) => {
    if (event.key === 'PageDown' || event.key === 'ArrowDown') { event.preventDefault(); goToPage(current + 1) }
    if (event.key === 'PageUp' || event.key === 'ArrowUp') { event.preventDefault(); goToPage(current - 1) }
    if (event.key === 'Home') { event.preventDefault(); goToPage(0) }
    if (event.key === 'End') { event.preventDefault(); goToPage(pages.length - 1) }
  }
  addEventListener('wheel', onWheel, { passive: false }); document.addEventListener('click', onClick); addEventListener('keydown', onKey)
  if (location.hash) requestAnimationFrame(() => goToPage(current, false))
  cleanupPager = () => { removeEventListener('wheel', onWheel); document.removeEventListener('click', onClick); removeEventListener('keydown', onKey) }
}

function setupPressFeedback() {
  const selector = '.primary,.secondary,.mail,.menu-toggle,.mobile-menu a,.glass'
  const clear = () => document.querySelectorAll('.is-pressing').forEach((el) => el.classList.remove('is-pressing'))
  const onPointerDown = (event) => {
    const target = event.target.closest?.(selector)
    if (target) target.classList.add('is-pressing')
  }
  document.addEventListener('pointerdown', onPointerDown, { passive: true })
  document.addEventListener('pointerup', clear, { passive: true })
  document.addEventListener('pointerleave', clear, { passive: true })
  document.addEventListener('pointercancel', clear, { passive: true })
  document.addEventListener('touchcancel', clear, { passive: true })
  cleanupPress = () => {
    document.removeEventListener('pointerdown', onPointerDown)
    document.removeEventListener('pointerup', clear)
    document.removeEventListener('pointerleave', clear)
    document.removeEventListener('pointercancel', clear)
    document.removeEventListener('touchcancel', clear)
    clear()
  }
}

function setupSky() {
  const canvas = sky.value
  const ctx = canvas.getContext('2d')
  const pointer = { x: innerWidth / 2, y: innerHeight / 2, speed: 0 }
  const stars = []
  let dpr = Math.min(devicePixelRatio || 1, 2)
  let raf = 0
  let running = false
  function resize() {
    const isSmall = innerWidth < 760
    dpr = Math.min(devicePixelRatio || 1, isSmall ? 1.35 : 1.75); canvas.width = Math.floor(innerWidth * dpr); canvas.height = Math.floor(innerHeight * dpr); canvas.style.width = innerWidth + 'px'; canvas.style.height = innerHeight + 'px'; ctx.setTransform(dpr, 0, 0, dpr, 0, 0); stars.length = 0
    const total = Math.min(isSmall ? 140 : 220, Math.max(isSmall ? 80 : 125, Math.floor(innerWidth * innerHeight / (isSmall ? 7600 : 6900))))
    for (let i = 0; i < total; i++) stars.push({ x: Math.random() * innerWidth, y: Math.random() * innerHeight, vx: (Math.random() - .5) * .12, vy: (Math.random() - .5) * .12, r: Math.random() * 1.45 + .3, hue: [190, 210, 245, 270][Math.floor(Math.random() * 4)] })
  }
  function move(event) { const x = event.touches?.[0]?.clientX ?? event.clientX; const y = event.touches?.[0]?.clientY ?? event.clientY; pointer.speed = Math.hypot(x - pointer.x, y - pointer.y); pointer.x = x; pointer.y = y }
  function frame() {
    if (!running || document.hidden) return
    ctx.fillStyle = 'rgba(2, 6, 23, .15)'; ctx.fillRect(0, 0, innerWidth, innerHeight)
    const glow = ctx.createRadialGradient(pointer.x, pointer.y, 0, pointer.x, pointer.y, 118 + pointer.speed * .45); glow.addColorStop(0, 'rgba(125,211,252,.13)'); glow.addColorStop(.35, 'rgba(139,92,246,.065)'); glow.addColorStop(1, 'rgba(2,6,23,0)'); ctx.fillStyle = glow; ctx.fillRect(0, 0, innerWidth, innerHeight)
    stars.forEach((star) => { const dx = pointer.x - star.x; const dy = pointer.y - star.y; const dist = Math.hypot(dx, dy) + .01; if (dist < 420) { const f = (1 - dist / 420) * .034; star.vx += dx / dist * f; star.vy += dy / dist * f } star.vx *= .958; star.vy *= .958; star.x += star.vx; star.y += star.vy; if (star.x < -20) star.x = innerWidth + 20; if (star.x > innerWidth + 20) star.x = -20; if (star.y < -20) star.y = innerHeight + 20; if (star.y > innerHeight + 20) star.y = -20; ctx.fillStyle = `hsla(${star.hue},95%,78%,.76)`; ctx.beginPath(); ctx.arc(star.x, star.y, star.r, 0, Math.PI * 2); ctx.fill() })
    pointer.speed *= .88; raf = requestAnimationFrame(frame)
  }
  function startFrame() { if (running || document.hidden) return; running = true; raf = requestAnimationFrame(frame) }
  function stopFrame() { running = false; cancelAnimationFrame(raf) }
  function onVisibilityChange() { document.hidden ? stopFrame() : startFrame() }
  resize(); startFrame(); addEventListener('resize', resize); addEventListener('mousemove', move, { passive: true }); addEventListener('touchmove', move, { passive: true }); document.addEventListener('visibilitychange', onVisibilityChange)
  cleanupSky = () => { stopFrame(); removeEventListener('resize', resize); removeEventListener('mousemove', move); removeEventListener('touchmove', move); document.removeEventListener('visibilitychange', onVisibilityChange) }
}
onMounted(() => { setupSky(); setupGsapMotion(); setupPageSnap(); setupPressFeedback(); requestAnimationFrame(() => ScrollTrigger.refresh()) })
onBeforeUnmount(() => { cleanupSky(); cleanupMotion(); cleanupPager(); cleanupPress() })
</script>
