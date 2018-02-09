import React from 'react';
import { Link } from 'react-router-dom';
import Modal from 'react-modal';
import style from './show_modal_style';
// import style from './modal_style'

class BookShowModal extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      modalOpen: false,
    };

    this.closeModal = this.closeModal.bind(this);
    this.openModal = this.openModal.bind(this);
  }
  closeModal(){
    this.setState( {modalOpen: false} );
  }

  openModal(){
    this.setState( {modalOpen: true} );
  }


  render () {
    return (
      <div>
        <img
          onClick={this.openModal}
          className="book-cover"
          src={this.props.book.img_url}/>

        <Modal
          contentLabel="Modal"
          isOpen={this.state.modalOpen}
          onRequestClose={this.closeModal}
          style={style}
          >
          <div className="book-show-box">

            <div className="not-description">
              <img src={this.props.book.img_url}/>
              <div className= "book-info">
                <p>Title: {this.props.book.title}</p>
                <p>Author: {this.props.book.author}</p>
                <p>Publish Date: {this.props.book.publish_date}</p>
                </div>
            </div>
            <br></br>
            <br></br>
          <p className="book-description">
            {this.props.book.description}
          </p>
          </div>
        </Modal>
      </div>
    )
  }
}

export default BookShowModal;
