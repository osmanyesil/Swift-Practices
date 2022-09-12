//
//  EditTableViewCell.swift
//  AddRowsTableView
//
//  Created by Osman Yesil on 13.09.2022.
//

import UIKit

class EditTableViewCell: UITableViewCell {

    @IBOutlet private weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setupUI(labelName: String?) {
        self.labelName.text = labelName
    }
}
