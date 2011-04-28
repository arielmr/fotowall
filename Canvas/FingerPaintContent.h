/***************************************************************************
 *                                                                         *
 *   This file is part of the Fotowall project,                            *
 *       http://www.enricoros.com/opensource/fotowall                      *
 *                                                                         *
 *   Copyright (C) 2007-2009 by Enrico Ros <enrico.ros@gmail.com>          *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#ifndef __FingerPaintContent_h__
#define __FingerPaintContent_h__

#include "AbstractContent.h"
#include "Shared/PictureEffect.h"
class CPixmap;
class QFileSystemWatcher;
class QNetworkReply;

/**
    \brief Transformable picture, with lots of gadgets
*/
class FingerPaintContent : public AbstractContent
{
    Q_OBJECT
    Q_PROPERTY(bool externalEdit READ externalEdit WRITE setExternalEdit)
    public:
        FingerPaintContent(bool spontaneous, QGraphicsScene * scene, QGraphicsItem * parent = 0);
        ~FingerPaintContent();

        bool loadPhoto(const QString & picFilePath, bool keepRatio = false, bool setName = false);
        bool loadFromNetwork(const QString & url, QNetworkReply * reply = 0, const QString & title = QString(), int width = -1, int height = -1);
        bool loadPixmap(const QPixmap & pixmap, const QString & title = QString());
        void addEffect(const PictureEffect & effect);
        void crop();

        // ::AbstractContent
        QString contentName() const { return tr("FingerPaint"); }
        QWidget * createPropertyWidget(ContentProperties * p = 0);
        bool fromXml(QDomElement & contentElement, const QDir & baseDir);
        void toXml(QDomElement & contentElement, const QDir & baseDir) const;
        void drawContent(QPainter * painter, const QRect & targetRect, Qt::AspectRatioMode ratio);
        QPixmap toPixmap(const QSize & size, Qt::AspectRatioMode ratio);
        int contentHeightForWidth(int width) const;
        bool contentOpaque() const;

        // ::QGraphicsItem
        void dropEvent(QGraphicsSceneDragDropEvent * event);
        void mousePressEvent(QGraphicsSceneMouseEvent *event);
        void mouseMoveEvent(QGraphicsSceneMouseEvent *event);
        void mouseReleaseEvent(QGraphicsSceneMouseEvent *event);
        bool touchEvent(QTouchEvent *event);
//        void mouseDoubleClickEvent(QGraphicsSceneMouseEvent * event);

    Q_SIGNALS:
        void flipHorizontally();
        void flipVertically();
        void requestCrop();

    protected:
        // properties
        void setExternalEdit(bool);
        bool externalEdit() const;
        bool sceneEvent(QEvent *event);

    private:
        void dropNetworkConnection();
        void applyPostLoadEffects();
        QString     m_fileUrl;
        CPixmap *   m_photo;
        QPixmap     m_cachedPhoto;
        bool        m_opaquePhoto;
        double      m_progress;
        int         m_netWidth;
        int         m_netHeight;
        QNetworkReply * m_netReply;
        QList<PictureEffect> m_afterLoadEffects;
        QFileSystemWatcher * m_watcher;
        QTimer *    m_watcherTimer;
        QList<QColor> myPenColors;
        bool            m_painting;
        QGraphicsItem*  m_brushItem;
        QPen*           m_pen;

    private Q_SLOTS:
        void slotGimpCompressNotifies();
        void slotGimpFinished();
        bool slotLoadNetworkData();
        void slotNetworkError();
        void slotNetworkProgress(qint64, qint64);        

};

#endif //FingerPaintContent
