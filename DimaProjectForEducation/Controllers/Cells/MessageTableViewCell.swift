import UIKit

class MessageTableViewCell: UITableViewCell {
    let messageView = UIView()
    let textMessage = UILabel()
    var leadingConstraint: NSLayoutConstraint?
    var trailingConstraint: NSLayoutConstraint?
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func configCell(message: String) {
        self.addSubview(messageView)
        messageView.addSubview(textMessage)
        messageView.layer.cornerRadius = 8
        messageView.translatesAutoresizingMaskIntoConstraints = false
        textMessage.translatesAutoresizingMaskIntoConstraints = false
        textMessage.numberOfLines = 0
        textMessage.text = message
        self.selectionStyle = .none
        leadingConstraint = messageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12)
        trailingConstraint = messageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -90)
        messageView.backgroundColor = .yellow
        messageView.removeConstraints(messageView.constraints)
        NSLayoutConstraint.activate([
            messageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            textMessage.topAnchor.constraint(equalTo: messageView.topAnchor, constant: 12),
            textMessage.leadingAnchor.constraint(equalTo: messageView.leadingAnchor, constant: 12),
            textMessage.trailingAnchor.constraint(equalTo: messageView.trailingAnchor, constant: -12),
            messageView.bottomAnchor.constraint(equalTo: textMessage.bottomAnchor, constant: 12),
            leadingConstraint!,
            trailingConstraint!,
            messageView.heightAnchor.constraint(equalToConstant: 50),
            self.bottomAnchor.constraint(equalTo: messageView.bottomAnchor, constant: 8)
        ])
    }
}
