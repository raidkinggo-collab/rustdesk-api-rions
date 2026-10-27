<template>
  <el-scrollbar class="scroll-sidebar" height="100vh">
    <div class="sidebar-brand">
      <img src="@/assets/rions-logo.png" alt="RionsDesk" class="sidebar-logo"/>
      <span v-if="!isCollapse" class="sidebar-brand-name">RionsDesk</span>
    </div>
    <menus></menus>
  </el-scrollbar>
</template>
<script>
  import Menus from '@/layout/components/menu/index.vue'
  import { defineComponent, computed } from 'vue'
  import { useAppStore } from '@/store/app'

  export default defineComponent({
    name: 'GAside',
    components: { Menus },
    setup () {
      const app = useAppStore()
      const isCollapse = computed(() => app.setting.sideIsCollapse)
      return { isCollapse }
    },
  })
</script>

<style scoped lang="scss">
.scroll-sidebar {
  background-color: #16314a;
}

.sidebar-brand {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 16px 18px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.08);
}

.sidebar-logo {
  width: 32px;
  height: 32px;
  display: block;
  flex-shrink: 0;
}

.sidebar-brand-name {
  color: #fff;
  font-size: 18px;
  font-weight: 700;
  letter-spacing: 0.3px;
  white-space: nowrap;
}
</style>
