﻿
namespace WindowsProject
{
    partial class ReportForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgw_Reporttable = new System.Windows.Forms.DataGridView();
            this.lbl_UserId = new System.Windows.Forms.Label();
            this.lbl_CategoryS = new System.Windows.Forms.Label();
            this.lbl_Prices = new System.Windows.Forms.Label();
            this.lbl_CountS = new System.Windows.Forms.Label();
            this.lbl_UserIDS = new System.Windows.Forms.Label();
            this.lbl_Name = new System.Windows.Forms.Label();
            this.btn_Search = new System.Windows.Forms.Button();
            this.cmb_SearchDetail = new System.Windows.Forms.ComboBox();
            this.txbSearchPrice = new System.Windows.Forms.TextBox();
            this.txbSerachCount = new System.Windows.Forms.TextBox();
            this.txb_UserId = new System.Windows.Forms.TextBox();
            this.txb_SearchDetailName = new System.Windows.Forms.TextBox();
            this.lbl_Status = new System.Windows.Forms.Label();
            this.textBStatus = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgw_Reporttable)).BeginInit();
            this.SuspendLayout();
            // 
            // dgw_Reporttable
            // 
            this.dgw_Reporttable.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgw_Reporttable.Location = new System.Drawing.Point(2, 1);
            this.dgw_Reporttable.Name = "dgw_Reporttable";
            this.dgw_Reporttable.RowHeadersWidth = 62;
            this.dgw_Reporttable.RowTemplate.Height = 28;
            this.dgw_Reporttable.Size = new System.Drawing.Size(772, 580);
            this.dgw_Reporttable.TabIndex = 0;
            this.dgw_Reporttable.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgw_Reporttable_CellContentClick);
            // 
            // lbl_UserId
            // 
            this.lbl_UserId.AutoSize = true;
            this.lbl_UserId.Location = new System.Drawing.Point(847, 525);
            this.lbl_UserId.Name = "lbl_UserId";
            this.lbl_UserId.Size = new System.Drawing.Size(51, 20);
            this.lbl_UserId.TabIndex = 1;
            this.lbl_UserId.Text = "label1";
            this.lbl_UserId.Visible = false;
            // 
            // lbl_CategoryS
            // 
            this.lbl_CategoryS.AutoSize = true;
            this.lbl_CategoryS.Location = new System.Drawing.Point(836, 259);
            this.lbl_CategoryS.Name = "lbl_CategoryS";
            this.lbl_CategoryS.Size = new System.Drawing.Size(84, 20);
            this.lbl_CategoryS.TabIndex = 54;
            this.lbl_CategoryS.Text = "Kateqoriya";
            this.lbl_CategoryS.Click += new System.EventHandler(this.lbl_CategoryS_Click);
            // 
            // lbl_Prices
            // 
            this.lbl_Prices.AutoSize = true;
            this.lbl_Prices.Location = new System.Drawing.Point(836, 200);
            this.lbl_Prices.Name = "lbl_Prices";
            this.lbl_Prices.Size = new System.Drawing.Size(58, 20);
            this.lbl_Prices.TabIndex = 53;
            this.lbl_Prices.Text = "Qiymət";
            // 
            // lbl_CountS
            // 
            this.lbl_CountS.AutoSize = true;
            this.lbl_CountS.Location = new System.Drawing.Point(836, 151);
            this.lbl_CountS.Name = "lbl_CountS";
            this.lbl_CountS.Size = new System.Drawing.Size(36, 20);
            this.lbl_CountS.TabIndex = 52;
            this.lbl_CountS.Text = "Say";
            // 
            // lbl_UserIDS
            // 
            this.lbl_UserIDS.AutoSize = true;
            this.lbl_UserIDS.Location = new System.Drawing.Point(790, 106);
            this.lbl_UserIDS.Name = "lbl_UserIDS";
            this.lbl_UserIDS.Size = new System.Drawing.Size(179, 20);
            this.lbl_UserIDS.TabIndex = 51;
            this.lbl_UserIDS.Text = "Dəyişiklik edən istifadəçi";
            // 
            // lbl_Name
            // 
            this.lbl_Name.AutoSize = true;
            this.lbl_Name.Location = new System.Drawing.Point(836, 58);
            this.lbl_Name.Name = "lbl_Name";
            this.lbl_Name.Size = new System.Drawing.Size(85, 20);
            this.lbl_Name.TabIndex = 50;
            this.lbl_Name.Text = "Məhsul adı";
            this.lbl_Name.Click += new System.EventHandler(this.lbl_Name_Click);
            // 
            // btn_Search
            // 
            this.btn_Search.Location = new System.Drawing.Point(1045, 376);
            this.btn_Search.Name = "btn_Search";
            this.btn_Search.Size = new System.Drawing.Size(114, 46);
            this.btn_Search.TabIndex = 49;
            this.btn_Search.Text = "Axtar";
            this.btn_Search.UseVisualStyleBackColor = true;
            this.btn_Search.Click += new System.EventHandler(this.btn_Search_Click);
            // 
            // cmb_SearchDetail
            // 
            this.cmb_SearchDetail.FormattingEnabled = true;
            this.cmb_SearchDetail.Location = new System.Drawing.Point(1011, 251);
            this.cmb_SearchDetail.Name = "cmb_SearchDetail";
            this.cmb_SearchDetail.Size = new System.Drawing.Size(300, 28);
            this.cmb_SearchDetail.TabIndex = 46;
            this.cmb_SearchDetail.SelectedIndexChanged += new System.EventHandler(this.cmb_SearchDetail_SelectedIndexChanged);
            // 
            // txbSearchPrice
            // 
            this.txbSearchPrice.Location = new System.Drawing.Point(1011, 200);
            this.txbSearchPrice.Name = "txbSearchPrice";
            this.txbSearchPrice.Size = new System.Drawing.Size(300, 26);
            this.txbSearchPrice.TabIndex = 48;
            this.txbSearchPrice.TextChanged += new System.EventHandler(this.txbSearchPrice_TextChanged);
            // 
            // txbSerachCount
            // 
            this.txbSerachCount.Location = new System.Drawing.Point(1011, 145);
            this.txbSerachCount.Name = "txbSerachCount";
            this.txbSerachCount.Size = new System.Drawing.Size(300, 26);
            this.txbSerachCount.TabIndex = 47;
            this.txbSerachCount.TextChanged += new System.EventHandler(this.txbSerachCount_TextChanged);
            // 
            // txb_UserId
            // 
            this.txb_UserId.Location = new System.Drawing.Point(1011, 100);
            this.txb_UserId.Name = "txb_UserId";
            this.txb_UserId.Size = new System.Drawing.Size(300, 26);
            this.txb_UserId.TabIndex = 45;
            // 
            // txb_SearchDetailName
            // 
            this.txb_SearchDetailName.Location = new System.Drawing.Point(1011, 56);
            this.txb_SearchDetailName.Name = "txb_SearchDetailName";
            this.txb_SearchDetailName.Size = new System.Drawing.Size(300, 26);
            this.txb_SearchDetailName.TabIndex = 44;
            this.txb_SearchDetailName.TextChanged += new System.EventHandler(this.txb_SearchDetailName_TextChanged);
            // 
            // lbl_Status
            // 
            this.lbl_Status.AutoSize = true;
            this.lbl_Status.Location = new System.Drawing.Point(847, 312);
            this.lbl_Status.Name = "lbl_Status";
            this.lbl_Status.Size = new System.Drawing.Size(65, 20);
            this.lbl_Status.TabIndex = 56;
            this.lbl_Status.Text = "Satatus";
            // 
            // textBStatus
            // 
            this.textBStatus.Location = new System.Drawing.Point(1011, 306);
            this.textBStatus.Name = "textBStatus";
            this.textBStatus.Size = new System.Drawing.Size(300, 26);
            this.textBStatus.TabIndex = 55;
            // 
            // ReportForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1407, 584);
            this.Controls.Add(this.lbl_Status);
            this.Controls.Add(this.textBStatus);
            this.Controls.Add(this.lbl_CategoryS);
            this.Controls.Add(this.lbl_Prices);
            this.Controls.Add(this.lbl_CountS);
            this.Controls.Add(this.lbl_UserIDS);
            this.Controls.Add(this.lbl_Name);
            this.Controls.Add(this.btn_Search);
            this.Controls.Add(this.cmb_SearchDetail);
            this.Controls.Add(this.txbSearchPrice);
            this.Controls.Add(this.txbSerachCount);
            this.Controls.Add(this.txb_UserId);
            this.Controls.Add(this.txb_SearchDetailName);
            this.Controls.Add(this.lbl_UserId);
            this.Controls.Add(this.dgw_Reporttable);
            this.Name = "ReportForm";
            this.Text = "ReportForm";
            this.Load += new System.EventHandler(this.ReportForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgw_Reporttable)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgw_Reporttable;
        private System.Windows.Forms.Label lbl_UserId;
        private System.Windows.Forms.Label lbl_CategoryS;
        private System.Windows.Forms.Label lbl_Prices;
        private System.Windows.Forms.Label lbl_CountS;
        private System.Windows.Forms.Label lbl_UserIDS;
        private System.Windows.Forms.Label lbl_Name;
        private System.Windows.Forms.Button btn_Search;
        private System.Windows.Forms.ComboBox cmb_SearchDetail;
        private System.Windows.Forms.TextBox txbSearchPrice;
        private System.Windows.Forms.TextBox txbSerachCount;
        private System.Windows.Forms.TextBox txb_UserId;
        private System.Windows.Forms.TextBox txb_SearchDetailName;
        private System.Windows.Forms.Label lbl_Status;
        private System.Windows.Forms.TextBox textBStatus;
    }
}