<template>
  <div class="page-help">
    <div class="page-help__text">
      <div class="page-help__title-row">
        <span class="page-help__title">{{ title }}</span>
        <el-tooltip v-if="help" :content="help" placement="top" effect="dark" :show-after="100">
          <el-icon class="page-help__icon"><InfoFilled /></el-icon>
        </el-tooltip>
      </div>
      <div v-if="description" class="page-help__desc">{{ description }}</div>
    </div>
  </div>
</template>

<script setup>
  import { InfoFilled } from '@element-plus/icons'

  defineProps({
    title: { type: String, required: true },
    description: { type: String, default: '' },
    help: { type: String, default: '' },
  })
</script>

<style scoped lang="scss">
.page-help {
  margin: 0 0 16px;
  padding: 16px 20px;
  background-color: var(--el-bg-color, #fff);
  border-radius: 10px;
  border-left: 4px solid var(--el-color-primary);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
}

.page-help__title-row {
  display: flex;
  align-items: center;
  gap: 8px;
}

.page-help__title {
  font-size: 18px;
  font-weight: 700;
  color: var(--el-text-color-primary);
  line-height: 1.3;
}

.page-help__icon {
  color: var(--el-color-primary);
  cursor: help;
  font-size: 16px;
}

.page-help__desc {
  margin-top: 4px;
  font-size: 13px;
  color: var(--el-text-color-secondary);
}
</style>
