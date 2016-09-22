//
//  CoverFlowLayout.m
//  CoverFlowLayout
//
//  Created by Philip Ha on 2016-09-22.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import "CoverFlowLayout.h"

@implementation CoverFlowLayout

- (void)prepareLayout{
    
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.sectionInset = UIEdgeInsetsMake(150, 150, 150, 150);
    self.itemSize = CGSizeMake(100, 100);
    
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    
    NSArray *attributes = [super layoutAttributesForElementsInRect:rect];
    
    CGRect visibleRegion;
    
    visibleRegion.origin = self.collectionView.contentOffset;
    visibleRegion.size = self.collectionView.bounds.size;
    
    for (UICollectionViewLayoutAttributes *attribute in attributes){
        
        if(CGRectIntersectsRect(rect, attribute.frame)){
            
            float distanceFromOrigin = (attribute.center.x - (visibleRegion.origin.x + visibleRegion.size.width / 2));
            
            if (fabs(distanceFromOrigin) < 80){
                
                attribute.transform3D = CATransform3DMakeScale(2, 2, 0);
                
                // frame moves at the same time so you have to cancel it out by distancefromorigin / 2
                
                attribute.transform3D = CATransform3DTranslate(attribute.transform3D, -distanceFromOrigin/2, 0, 0);

                
                
            }
            
            
            
            
        }
  
        
    }
    
    
    return attributes;
    
    
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds{
    
    return YES;
}

@end
