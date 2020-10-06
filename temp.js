.hello {
  background-color: #2c3e50;

  .tree_wrapper {
    padding: 20px;

    /deep/ {
      .el-tree {
        background-color: transparent;
      }

      .el-tree-node {
        margin: 10px 0;
      }
      .el-tree-node__label {
        font-size: 18px;
      }
      .el-tree-node.is-current > .el-tree-node__content {
       color: violet;
      }

      .el-tree-node__children {
        > .el-tree-node {
          background-color: transparent;
          margin: 0;
          > .el-tree-node__content {
            background-color: transparent;
          }

          > .el-tree-node__children {
            background-color: transparent;
          }
        }
      }
      .el-tree-node__content {
        background-color: rgba(88, 225, 88, 0.15);
        color: white;
        height: 40px;

      }
      .el-tree-node__expand-icon {
        display: none;
      }

      .el-tree-node__children {
        background-color: rgba(88, 225, 88, 0.05);
      }
    }

    /deep/ .el-tree {
      margin: 20px 50px;
      .el-tree-node {
        position: relative;
        padding-left: 10px;
      }
      .el-tree-node__children {
        padding-left: 10px;
      }
      .el-tree-node :last-child:before {
        height: 40px;
      }
      .el-tree > .el-tree-node:before {
        border-left: none;
      }
      .el-tree > .el-tree-node:after {
        border-top: none;
      }
      .el-tree-node:before,
      .el-tree-node:after {
        content: "";
        left: -4px;
        position: absolute;
        right: auto;
        border-width: 1px;
      }
      .tree :first-child .el-tree-node:before {
        border-left: none;
      }
      .el-tree-node:before {
        border-left: 1px solid #e3e3e3;
        bottom: 0px;
        height: 100%;
        top: -20px;
        width: 1px;
        left: 10px;
      }
      .el-tree-node:after {
        border-top: 1px solid #e3e3e3;
        height: 20px;
        top: 20px;
        width: 16px;
        left: 10px;
      }
      .el-tree-node__expand-icon.is-leaf {
        width: 8px;
      }
      .el-tree-node__content > .el-tree-node__expand-icon {
        display: none;
      }
      .el-tree-node__content {
        &:hover .examine {
          display: block;
          display: inline-block;
        }
      }
    }
    /deep/ .el-tree > div {
      &::before {
        display: none;
      }
      &::after {
        display: none;
      }
    }
  }
}
